class Place
  attr_reader :name,
              :formatted_address,
              :place_id
  def initialize(place_data)
    @name = place_data[:properties][:name]
    @formatted_address = place_data[:properties][:formatted]
    @place_id = place_data[:properties][:place_id]
  end
end