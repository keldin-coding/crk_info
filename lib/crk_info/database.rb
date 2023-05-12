require "json"
require "erb"

require "crk_info/good"
require "crk_info/material"

class CrkInfo::Database
  DEFAULT_PATH = "./data/production_data.json"

  class << self
    attr_reader :materials, :goods

    def load(path = DEFAULT_PATH)
      parsed = JSON.parse(File.read(path))

      @materials = parsed["materials"].each_with_object({}) do |(material_id, material), obj|
        obj[material_id.freeze] = CrkInfo::Material.from_hash(material).freeze
      end.freeze

      @goods = parsed["goods"].each_with_object({}) do |(good_id, good), obj|
        obj[good_id.freeze] = CrkInfo::Good.from_hash(good).freeze
      end.freeze
    end

    def dump_as_dot
      template = ERB.new(File.read("lib/production_data.dot.erb"))

      File.open("production_data.dot", "w") do |f|
        f.puts(template.result_with_hash({materials: materials, goods: goods}))
      end
    end
  end
end
