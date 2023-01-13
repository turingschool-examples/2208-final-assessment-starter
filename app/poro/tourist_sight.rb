class Capital
    attr_reader :name, :address, :place_id

    def initialize(properties)
        @name = properties[:name]
        @address = properties[:formatted]
        @place_id = properties[:place_id]
    end
end
