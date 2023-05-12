module CrkInfo
  class Material
    attr_reader :id, :label

    def self.from_hash(hsh)
      new(hsh["id"], hsh["label"])
    end

    def initialize(id, label)
      @id = id
      @label = label
    end
  end
end
