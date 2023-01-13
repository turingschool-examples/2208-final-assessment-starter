class TouristSightFacade
  def self.tourist_sights(longitude, latitude)
    TouristService.search_tourist_sites(longitude, latitude)[:features].map do |tourist_sight|
      TouristSight.new(tourist_sight[:properties])
    end
  end
end
