class TouristSightsFacade
  def self.tourist_sights(country)
      capital = CountryFacade.capital_info(country)
      raw_tourist_sights_hash = TouristSightsService.tourist_sights_info(capital.longitude, capital.latitude)
      tourist_sights_array = raw_tourist_sights_hash[:features]
      
      tourist_sights_array.map do |feature|
        tourist_info_hash = {}
        tourist_info_hash[:name] = feature[:properties][:name]
        tourist_info_hash[:address] = feature[:properties][:formatted]
        tourist_info_hash[:place_id] = feature[:properties][:place_id]
        TouristSight.new(tourist_info_hash)
      end
  end 
end 