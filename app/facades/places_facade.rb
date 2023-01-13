class PlacesFacade 
  def self.tourist_sites(country)
    long = CountryFacade.capital_info(country).longitude
    lat = CountryFacade.capital_info(country).latitude
    PlacesService.nearby_tourist_sites(long, lat)[:features].map do |site|
      Place.new(site)
    end
  end

end