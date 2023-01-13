class TouristSightsFacade 
  def self.sights_info(country)
    capital = CountryFacade.capital_info(country)
    sights_data = service.get_sights(capital.longitude, capital.latitude)
    sights_data[:features].map do |data|
      TouristSight.new(data)
    end
  end

  def self.service 
    PlacesService.new 
  end
end