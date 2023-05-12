module CrkInfo
  class Good
    RequirementData = Struct.new("RequirementData", :item_id, :count) do
      def item(mats)
        mats[self.item_id]
      end
    end

    attr_reader :id, :label, :requires, :facility

    def self.from_hash(hsh)
      new(hsh["id"], hsh["label"], hsh["requires"], hsh["facility"])
    end

    def initialize(id, label, requires, facility)
      @id = id
      @label = label
      @requires = requires.map { |r| RequirementData.new(r["item"], r["count"]) }
      @facility = facility
    end

    def requires_item?(item_id)
      requires.any? { |r| r.item_id == item_id }
    end
  end
end
