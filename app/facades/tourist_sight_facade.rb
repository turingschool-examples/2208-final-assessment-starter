class TouristSightFacade
  def self.capital_tourist_sights(capital_coords)
    TouristSightService.get_tourist_sights(capital_coords).map do |sight_data|
      # require "pry"; binding.pry
      TouristSight.new(sight_data[:properties])
    end
  end
end
