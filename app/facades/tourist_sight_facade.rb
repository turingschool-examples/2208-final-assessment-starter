class TouristSightFacade
  def self.get_tourist_sight(filter)
    sight = TouristSightService.find_sights(filter)
    TouristSight.new(sight)
  end
end