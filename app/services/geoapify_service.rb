class GeoapifyService 
  def self.conn 
    Faraday.new("https://api.geoapify.com")
  end 
end 

def self.tourist_sight(capital)
  response = conn.get("/v2/places?categories=tourism.sights&filter=circle:#{capital.longitude},#{capital.latitude},20000") do |f|
    f.params["api_key"] = ENV['places_api_key']
  end 
  data = JSON.parse(response.body,symbolize_names: true)
end