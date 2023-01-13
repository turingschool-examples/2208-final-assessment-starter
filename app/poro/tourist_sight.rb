class TouristSight
  attr_reader :name, :address, :place_id

  def initialize(tourist_sight)
    @name = tourist_sight[:name]
    @address = tourist_sight[:formatted]
    @place_id = tourist_sight[:place_id]
  end
end
