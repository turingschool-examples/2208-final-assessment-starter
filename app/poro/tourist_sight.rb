class TouristSight
  attr_reader :name, :address, :place_id

  def initialize(tourist_sight)
      @name = tourist_sight[:properties][:name]
      @address = tourist_sight[:properties][:formatted]
      @place_id = tourist_sight[:properties][:place_id]
  end 
end 