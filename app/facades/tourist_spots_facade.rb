class TouristSpotsFacade
  def self.spots_info(country)
      capital_city = CountriesNowService.get_capital_city(country)[:data][:capital]
      capital_info = GeocodingService.capital_info(capital_city,country).first
      capital = Capital.new(capital_info, country)
      PlacesService.get_tourist_spots(capital.longitude, capital.latitude)[:features].map do |place|
        TouristSpot.new(place)
      end
  end 
end 