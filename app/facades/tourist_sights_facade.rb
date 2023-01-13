class TouristSightsFacade
  
  def self.tourist_sights(country)
    capital_info = CountryFacade.capital_info(country)
    sights = TouristSightsService.tourist_sights(capital_info.longitude, capital_info.latitude)
    # binding.pry
    sights[:features].each do |sight|
      TouristSight.new(sight)
      binding.pry
    end 
  end
end