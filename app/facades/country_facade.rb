class CountryFacade
    def self.capital_info(country)
        capital = CountriesNowService.get_capital_city(country)[:data][:capital]
        capital_info = GeocodingService.capital_info(capital,country).first
        Capital.new(capital_info, country)
    end 

    def self.tourist_sights(country)
        capital = capital_info(country)
        tourist_sights_data = GeoapifyService.get_tourist_sights(capital)[:features]
        tourist_sights_data.map do |feature|
            TouristSight.new(feature)
        end
    end
end 