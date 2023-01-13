class PlacesService 
  def self.get_tourist_spots(long, lat)
      response = conn.get("/v2/places?categories=tourism.sights&filter=circle:#{long},#{lat},20000")
      JSON.parse(response.body,symbolize_names: true)
  end 

  def self.conn 
      Faraday.new("https://api.geoapify.com") do |f|
          f.headers["X-Api-Key"] = ENV['places_key']
      end 
  end 
end 