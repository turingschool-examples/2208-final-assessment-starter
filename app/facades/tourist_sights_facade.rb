class TouristSightsFacade
  def self.spots_info(country)
      capital_city = CountriesNowService.get_capital_city(country)[:data][:capital]
      capital_info = GeocodingService.capital_info(capital_city,country).first
      capital = Capital.new(capital_info, country)
      PlacesService.get_tourist_sights(capital.longitude, capital.latitude)[:features].map do |place|
        TouristSight.new(place)
      end
  end 
end 