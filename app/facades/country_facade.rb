class CountryFacade
    def self.capital_info(country)
      capital_json = CountriesNowService.get_capital_city(country)
      if capital_json[:msg] == 'country not found'
        nil
      else
        capital = CountriesNowService.get_capital_city(country)[:data][:capital]
        capital_info = GeocodingService.capital_info(capital,country).first
        Capital.new(capital_info, country)
      end
    end 
end 