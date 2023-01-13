class GeoapifyFacade 
  def self.tourist_info(lat, lon)
    tourist_data = GeoapifyService.tourist_sight(lat, lon)
    data = tourist_data[:features]
    data.map do |sight|
      TouristSight.new(sight[:properties])
    end
  end
end