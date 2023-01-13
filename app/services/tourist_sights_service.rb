class TouristSightsService 
  def self.tourist_sight_info(lon, lat)
      response = conn.get("/v2/places?categories=tourism.sights&filter=circle:#{lon},#{lat},20000")
      JSON.parse(response.body,symbolize_names: true)
  end 

  def self.conn 
      Faraday.new("https://api.geoapify.com") do |f|
        f.params['apiKey'] = ENV['api-places-key']
      end 
  end 
end 