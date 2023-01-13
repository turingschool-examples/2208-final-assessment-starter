class SightsFacade 
  def self.get_sights(long, lat)
    data = PlacesService.locations(long, lat)
    sight_data = data[:features]
    sight_data.map do |s|
      Sight.new(s[:properties])
    end
  end
end