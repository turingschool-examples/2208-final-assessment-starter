class TouristSightsFacade
    def self.get_tourist_sights(longitude, latitude)
       TouristSightsService.get_tourist_sights(longitude, latitude)
       [:features].map do |attributes|
        # binding.pry
        TouristSights.new(attributes[:features][:properties])
       end
      
    end
end