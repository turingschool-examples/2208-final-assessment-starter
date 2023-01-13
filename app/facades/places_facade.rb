class PlacesFacade
  def self.tourist_sights(lat, long)
    response = PlacesService.tourist_sights(lat, long)
    sights = response[:features]
    sights.map do |sight_info|
      Place.new(sight_info)
    end
  end
end
