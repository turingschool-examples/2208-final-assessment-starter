class TouristSightFacade
  def self.tourist_sights(longitude, latitude)
    PlacesService.tourist_sights(longitude, latitude)[:features].map do |attributes|
      TouristSight.new(attributes[:properties])
    end
  end
end