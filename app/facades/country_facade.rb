class CountryFacade
    def self.capital_info(country)
        service = CountriesNowService.get_capital_city(country)
        if service[:error] == true 
            nil 
        else
        
            capital = service[:data][:capital]
            capital_info = GeocodingService.capital_info(capital,country).first
            Capital.new(capital_info, country)
        end
    end 
end 