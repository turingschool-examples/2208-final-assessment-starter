class TouristSightFacade
  def self.tourist_sights(country)
    capital = CountryFacade.capital_info(country)
    TouristService.search_tourist_sites(capital.longitude, capital.latitude)[:features].map do |tourist_sight|
      TouristSight.new(tourist_sight[:properties])
    end
  end
end
