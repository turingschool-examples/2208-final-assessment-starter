class SightsFacade 
  def self.get_sights(lat, long)
    data = PlacesService.get_sights(lat, long)
    sights_data = data[:features]
    sights_data.map do |s|
      require 'pry'; binding.pry
      Sight.new(place[:properties])
    end
  end
end