class TouristSitesFacade 
  def self.tourist_sites(country)
    near_country = CountryFacade.capital_info(country)
    if near_country != nil 

      long = near_country.longitude
      lat = near_country.latitude
      TouristSitesService.nearby_tourist_sites(long, lat)[:features].map do |site|
        TouristSite.new(site)
      end
    else
      nil 
    end
  end

end