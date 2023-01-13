class PlacesService
  def self.tourist_site(lon,lat)
    response = conn.get("/v2/places") do |f|
      f.params["categories"] = "tourism.sights"
      f.params["filter"] = "circle:#{lon},#{lat},20000"
    end
    a = JSON.parse(response.body,symbolize_names: true)
  end

  def self.conn
    conn = Faraday.new("https://api.geoapify.com") do |f|
      f.params["apiKey"] = ENV['api-places-key']
    end 
  end
end