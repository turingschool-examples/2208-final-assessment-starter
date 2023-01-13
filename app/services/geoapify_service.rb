class GeoapifyService

  def self.conn
    Faraday.new("https://api.geoapify.com") do |f|
      f.headers["X-Api-Key"] = ENV['geoapify_api_key']
    end
  end

  def self.tourism_sites(lat,lon)
    response = conn.get("/v2/places?categories=tourism.sights&filter=circle:#{lon},#{lat},2000&bias=proximity:#{lon},#{lat}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
