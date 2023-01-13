class TouristSights
    attr_reader :name,
                :formatted_address,
                :place_id
    def initialize(attriubutes)
        @name = attributes[:name]
        @formatted_address = attributes[:formatted_address]
        @place_id = attributes[:place_id]
    end
end