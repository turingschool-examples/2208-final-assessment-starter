class TouristSiteFacade
  def self.tourist_sights(longitude, latitude)
    PlacesService.tourist_sights(longitude, latitude)[:features].map do |attributes|
      TouristSite.new(attributes[:properties])
    end
  end
end