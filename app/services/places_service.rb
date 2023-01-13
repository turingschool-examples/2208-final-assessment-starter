class PlacesService
  def self.conn
    Faraday.new(url: 'https://api.geoapify.com', params: { apiKey: ENV['places_api_key']})
  end
     # this could also work for accomodation.hotel, and entertainment.museum
  def self.get_hotels(capital)
    response = conn.get("v2/places?categories=tourism.sights&filter=circle:#{capital.longitude},#{capital.latitude},20000")
    parse = JSON.parse(response.body, symbolize_names: true)[:features]
  end
end
