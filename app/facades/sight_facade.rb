class SightFacade
    def self.tourist(country)
       latitude = CountryFacade.capital_info(country).latitude
       longitude =CountryFacade.capital_info(country).longitude
       map = "#{longitude},#{latitude}"
        data = SightService.show_me(country, map)
        data[:features].map do |info|
            Sight.new(info)
        end
    end
end