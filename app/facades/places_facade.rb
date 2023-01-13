class PlacesFacade
  def self.places(capital_info)
    places = PlacesService.get_tourist_sights(capital_info)
    locations = places.map do |p|
      TouristSight.new(p)
    end
  end
end
