class TouristSightsFacade
  
  def self.tourist_sights(country)
    capital_info = CountryFacade.capital_info(country)
    sights = TouristSightsService.tourist_sights(capital_info.longitude, capital_info.latitude).
    sights.each do |sight|
      TourestSights.new(sight)
    end 
  end
end