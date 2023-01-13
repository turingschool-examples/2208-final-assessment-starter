class TouristSiteFacade

  def self.tourist_sights(country)
    if CountriesNowService.get_capital_city(country)[:error]
      "Invalid Country Input"
    else
      capital = CountryFacade.capital_info(country)
      sights = GeoapifyService.tourist_sites(capital.latitude, capital.longitude)
      sights[:features].map do |sight|
        TouristSite.new(sight[:properties])
      end
    end
  end
end
