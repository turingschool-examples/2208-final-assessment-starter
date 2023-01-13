class TouristSightService
  def self.get_url(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end

  def self.get_tourist_sights(capital_coords)
    get_url("/v2/places?filter=circle:#{capital_coords}")[:features]
  end

  def self.conn
    conn = Faraday.new("https://api.geoapify.com") do |faraday|
      faraday.params["categories"] = 'tourism.sights'
      faraday.params["apiKey"] = ENV['places-api-key']
    end
  end
end
