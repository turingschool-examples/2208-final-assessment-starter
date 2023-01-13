class TouristSightsFacade
  def self.sights(country)
    capital = CountriesNowService.get_capital_city(country)[:data][:capital]
    capital_info = GeocodingService.capital_info(capital,country).first
    a = Capital.new(capital_info, country)
    lon = a.longitude
    lat = a.latitude
    results = PlacesService.tourist_site(lon,lat)
    # TouristSights.new(results)
    # require 'pry'; binding.pry
    a = results[:features].map do |feat|
      # require 'pry'; binding.pry
      TouristSights.new(feat)
    end
    # require 'pry'; binding.pry
  end 
end 