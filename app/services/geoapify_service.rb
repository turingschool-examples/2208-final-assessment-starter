class GeoapifyService

  def self.conn
    Faraday.new("https://api.geoapify.com") do |f|
      f.headers["X-Api-Key"] = ENV['geoapify_api_key']
    end
  end

  def self.closest_restaurants(lat,lon)
    response = conn.get("/v2/places?categories=catering.restaurant&bias=proximity:#{lon},#{lat}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
