class GeoapifyService 
  def self.tourist_sight(lat,lon)
    response = conn.get("/v2/places?categories=tourism.sights&filter=circle:#{lon},#{lat},20000")
    data = JSON.parse(response.body,symbolize_names: true)
  end 
      
  def self.conn 
    Faraday.new("https://api.geoapify.com/") do |f|
      f.params["api_key"] = ENV['places_api_key']
      f.params["categories"] = "tourism.sights"
    end 
  end 
end 