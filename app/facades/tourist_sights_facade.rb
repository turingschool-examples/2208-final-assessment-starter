class TouristSightsFacade
  def self.sights(country)
    capital = CountryFacade.capital_info(country)
    PlacesApiService.tourist_sights(capital)[:features].map do |sight_data|
      TouristSight.new(sight_data)
    end 
  end
end