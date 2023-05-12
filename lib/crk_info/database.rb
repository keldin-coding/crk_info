require "json"
require "erb"

require "crk_info/good"
require "crk_info/material"

class CrkInfo::Database
  DEFAULT_PATH = "./data/production_data.json"

  Facility = Struct.new("Facility", :id, :label)

  class << self
    attr_reader :materials, :goods, :facilities

    # Public API Mainly
    def load(path = DEFAULT_PATH)
      parsed = JSON.parse(File.read(path))

      @materials = parsed["materials"].each_with_object({}) do |(material_id, material), obj|
        obj[material_id.freeze] = CrkInfo::Material.from_hash(material).freeze
      end.freeze

      @goods = parsed["goods"].each_with_object({}) do |(good_id, good), obj|
        obj[good_id.freeze] = CrkInfo::Good.from_hash(good).freeze
      end.freeze

      @facilities = parsed["facilities"].each_with_object({}) do |(facility_id, facility), obj|
        obj[facility_id.freeze] = Facility.new(facility_id, facility["label"]).freeze
      end.freeze
    end

    def dump_as_dot
      template = ERB.new(File.read("lib/production_data.dot.erb"))

      File.open("production_data.dot", "w") do |f|
        f.puts(template.result_with_hash({materials: materials, goods: goods}))
      end
    end

    def dump_subgraphed_dot
      template = ERB.new(File.read("lib/production_data_subgraphed.dot.erb"))

      File.open("production_data_subgraphed.dot", "w") do |f|
        f.puts(template.result_with_hash({materials: materials, facilities: facilities, goods_by_facility: goods_by_facility}))
      end
    end

    # Helper and finder things
    def goods_by_facility
      load if materials.nil?

      by_facility = {}
      goods.each_value do |good|
        by_facility[good.facility] ||= []
        by_facility[good.facility] << good
      end

      by_facility
    end
  end
end
