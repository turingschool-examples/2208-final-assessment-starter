class PlaceFacade
  def self.get_tourist_places(longitude, latitude)
    parsed_places_json = PlacesService.find_tourist_sites(longitude, latitude)

    parsed_places_json[:features].map do |place_data|
      Place.new(place_data)
    end
  end
end