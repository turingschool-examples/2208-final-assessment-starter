class TouristSightService
  def self.get_tourist_sights(country)
    country_coords = conn.get("/api/v0.1/countries/capital/q?country=#{country}")
    JSON.parse(response.body,symbolize_names: true)
  end

  def self.conn

    conn = Faraday.new("https://api.geoapify.com") do |faraday|
      faraday.params["categories"] = 'tourism.sights'
      faraday.params["apiKey"] = ENV['places-api-key']
      faraday.params["filter"] = "circle:#{coords},2000"
    end
  end
end
