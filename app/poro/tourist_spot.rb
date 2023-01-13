class TouristSpot
  attr_reader :name, :address, :place_id

  def initialize(tourist_spot)
      @name = tourist_spot[:properties][:name]
      @address = tourist_spot[:properties][:formatted]
      @place_id = tourist_spot[:properties][:place_id]
  end 
end 