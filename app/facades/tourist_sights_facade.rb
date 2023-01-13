class TouristSightsFacade

  def self.find_sights(country)
    country = GeocodingService.capital_info(capital, country)
    binding.pry

    place = PlaceService.sights_by(country)
    Capital.new(capital_info, country)
#need to map through data for poros 
    Tourist.new()
  end
end