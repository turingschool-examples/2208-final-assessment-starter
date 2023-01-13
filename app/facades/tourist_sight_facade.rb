class TouristSightFacade
  def self.capital_tourist_sights(capital)
    capital_coords = capital.longitude.to_s + "," + capital.latitude.to_s + ",20000"
    TouristSightService.get_tourist_sights(capital_coords).map do |sight_data|
      TouristSight.new(sight_data[:properties])
    end
  end
end
