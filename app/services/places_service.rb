class PlacesService 
  def self.conn 
    Faraday.new("https://api.geoapify.com") do |faraday|
      faraday.params["apiKey"] = ENV["geoapify_api_key"]
    end
  end

  def self.get_url(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end

  def self.nearby_tourist_sites(long, lat)
    get_url("/v2/places?categories=tourism.sights&filter=circle:#{long},#{lat},20000&bias=proximity:#{long},#{lat}")
  end
end