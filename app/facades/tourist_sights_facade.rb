class TouristSightsFacade
  def self.sights(country)
    capital = CountriesNowService.get_capital_city(country)[:data][:capital]
    capital_info = GeocodingService.capital_info(capital,country).first
    a = Capital.new(capital_info, country)
    lon = a.longitude
    lat = a.latitude
    results = PlacesService.tourist_site(lon,lat)
    # c = TouristSights.new(results)
    results[:features].map do |feat|
      TouristSights.new(results)
    end
  end 
end 