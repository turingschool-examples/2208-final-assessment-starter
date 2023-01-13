class TouristSiteFacade

  def self.tourist_sights(country)
    capital = CountryFacade.capital_info(country)
    sights = GeoapifyService.tourist_sites(capital.latitude, capital.longitude)
    sights[:features].map do |sight|
      TouristSite.new(sight[:properties])
    end
  end


end
