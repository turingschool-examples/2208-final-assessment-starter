class TouristSightsFacade
  def self.sight(country)
    tourist_data = GeoapifyService.tourist_sight(country)
    data = tourist_data[:features]
    data.map do |sight|
      TouristSight.new(sight[:properties])
    end
    
    # capital = CountryFacade.capital_info(country)
    # GeoapifyService.tourist_sight(capital)[:features].map do |sight|
    #  TouristSight.new(sight)
    # end 
  end
end