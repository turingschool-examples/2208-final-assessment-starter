class CountryFacade
    def self.capital_info(country)
        capital = CountriesNowService.get_capital_city(country)[:data][:capital]
        capital_info = GeocodingService.capital_info(capital,country).first
        Capital.new(capital_info, country)
    end 
end 

capital_info = CountryFacade.capital_info(params[:country])