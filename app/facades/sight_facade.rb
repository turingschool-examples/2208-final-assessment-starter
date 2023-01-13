class SightFacade
    def self.tourist(country)
       latitude = CountryFacade.capital_info(country).latitude
       longitude =CountryFacade.capital_info(country).longitude
       map = "#{latitude},#{longitude}"
        data = SightService.show_me(country, map)
    end
end