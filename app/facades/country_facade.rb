class CountryFacade
    def self.capital_info(country)
        capital = CountriesNowService.get_capital_city(country)[:data][:capital]
        capital_info = GeocodingService.capital_info(capital,country).first
        Capital.new(capital_info, country)
    end

    def self.tourist_sights(country)
        longitude = capital_info(country).longitude
        latitude = capital_info(country).latitude
        tourist_sights = PlacesService.tourist_sights(longitude, latitude)
        tourist_sights[:features].map do |tourist_sight|
            Sight.new(tourist_sight)
        end
    end
end 