class SightFacade

  def tourism_sights(lon, lat)
    sights = SightService.new.tourism_sights(lon, lat)[:features]

    sights.map do |sight|
      TouristSight.new(sight[:properties])
    end
  end

  def service
    SightService.new
  end
end