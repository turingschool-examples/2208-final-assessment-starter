class TouristSightsFacade 
  def self.sights_info(country)
    capital = CountryFacade.capital_info(country)
    response = service.get_sights(capital.longitude, capital.latitude)
    sights_data = JSON.parse(response.body, symbolize_names: true)[:features]
    sights_data.map do |data|
      TouristSight.new(data)
    end
  end

  def self.service 
    PlacesService.new 
  end
end