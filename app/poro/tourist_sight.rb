class TouristSight
  attr_reader :name, :address, :id

  def initialize(tourist_sight)
    @name = tourist_sight[:name]
    @address = tourist_sight[:formatted]
    @id = tourist_sight[:place_id]
  end
end
