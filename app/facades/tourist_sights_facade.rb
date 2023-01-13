class TouristSightsFacade
  def self.tourist_sights(country)
    capital_info = CountryFacade.capital_info(country)
    sights = TouristSightsService.tourist_sights(capital_info.longitude, country.)
  end
end