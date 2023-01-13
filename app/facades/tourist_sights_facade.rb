class TouristSightsFacade
  def self.tourist_sights(country)
      capital = CountryFacade.capital_info(country)
      raw_tourist_sights_hash = TouristSightsService.tourist_sights_info(capital.longitude, capital.latitude)
      tourist_sights_array = raw_tourist_sights_hash[:features]

      tourist_sights_array.map do |feature|
        tourist_info_hash = {}
        tourist_info_hash[:name] =
        tourist_info_hash[:address] =
        tourist_info_hash[:name] =
      TouristSight.new(tourist_sight_info)
      end
  end 


end 