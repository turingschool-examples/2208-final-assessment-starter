class TouristSightService
  def self.get_url(url)
    # response = conn.get('/v2/places') do |req|
    #   req.params
    # end
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end

  def self.get_tourist_sights(capital_coords)
    # require "pry"; binding.pry
    response = conn.get('/v2/places') do |req|
      req.params["filter"] = "circle:#{capital_coords}"
    end
    # require "pry"; binding.pry
    test = JSON.parse(response.body, symbolize_names: true)[:features]

    # get_url("/v2/places?filter=circle:#{capital_coords}")
  end

  def self.conn
    conn = Faraday.new("https://api.geoapify.com") do |faraday|
      faraday.params["categories"] = 'tourism.sights'
      faraday.params["apiKey"] = ENV['places-api-key']
    end
  end
end

# https://api.geoapify.com/v2/places?categories=tourism.sights&filter=circle:-0.07071648508463113,51.50848194136378,2000&apiKey=7dc9a5c49282409f9e238e986d8e1b36
