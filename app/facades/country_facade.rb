class CountryFacade
    def self.capital_info(country)
        capital = CountriesNowService.get_capital_city(country)[:data][:capital]
        capital_info = GeocodingService.capital_info(capital,country).first
        Capital.new(capital_info, country)
        
    end 

     def self.get_country(lat, long)
        response = conn.get("/api/v0.1/countries/q?country=#{country}") 
        JSON.parse(response.body,symbolize_names: true) 
    end
end 