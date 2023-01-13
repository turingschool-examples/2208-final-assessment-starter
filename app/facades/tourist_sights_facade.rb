class TouristSightsFacade
    def self.get_tourist_sights(country)
       data = GeoCodingService.get_country(country)
       binding.pry
        
    end
end