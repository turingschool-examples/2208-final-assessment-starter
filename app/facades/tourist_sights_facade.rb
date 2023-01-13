class TouristSightsFacade

  def self.find_sights(country)
    country = CountriesNowService.get_capital_city(country)
    country_info = country
    place = PlaceService.sights_by(country_info, )
    Capital.new(capital_info, country)

    Tourist.new()
  end
end