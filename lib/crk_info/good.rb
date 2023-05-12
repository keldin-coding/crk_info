module CrkInfo
  class Good
    RequirementData = Struct.new("RequirementData", :item_id, :count) do
      def item(mats)
        mats[self.item_id]
      end
    end

    attr_reader :id, :label, :requires

    def self.from_hash(hsh)
      new(hsh["id"], hsh["label"], hsh["requires"])
    end

    def initialize(id, label, requires)
      @id = id
      @label = label
      @requires = requires.map { |r| RequirementData.new(r["item"], r["count"]) }
    end
  end
end
