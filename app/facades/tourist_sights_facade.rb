class TouristSightsFacade
  
  def self.tourist_sights(country)
    capital_info = CountryFacade.capital_info(country)
    sights = TouristSightsService.tourist_sights(capital_info.longitude, capital_info.latitude)
    limit_20 = sights[:features][0..20]
    limit_20.map do |sight|
      TouristSight.new(sight)
    end 
  end
end

