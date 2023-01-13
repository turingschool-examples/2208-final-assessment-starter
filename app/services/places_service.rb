class PlacesService

  def self.conn
    Faraday.new("https://api.geoapify.com") do |f|
          f.params['apiKey'] = ENV['place_key']
  end

  def self.find_places
    # response = conn.get("/v2/places?categories=tourism.sights&filter=circle:2.3483915,48.8588897,#{radius}&bias=proximity:#{lon},#{lat}")
  end
end