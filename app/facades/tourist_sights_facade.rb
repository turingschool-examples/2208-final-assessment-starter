class TouristSightsFacade
    def self.get_tourist_sights(longitude, latitude)
      data = TouristSightsService.get_tourist_sights(longitude, latitude)
       data[:features].map do |attributes|
       
        TouristSights.new(attributes)
       end
      
    end
end