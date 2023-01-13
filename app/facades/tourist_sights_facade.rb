class TouristSightsFacade
  def self.tourist_sights(country)
    capital_info = CountryFacade.capital_info(country)
    places = PlacesService.get_place(capital_info.longitude, capital_info.latitude)[:features]
    places.map {|place| TouristSight.new(place)}
  end
end