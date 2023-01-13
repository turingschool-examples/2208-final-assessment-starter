class PlaceService

  def self.conn
    Faraday.new("https://api.geoapify.com") do |f|
          f.params['apiKey'] = ENV['place_key']
    end
  end

  def self.sights_by(lon, lat)
 
    response = conn.get("v2/places?categories=tourism.sights&filter=circle:#{lon},#{lat},20000&bias=proximity:#{lon},#{lat}&limit=20")
    data = JSON.parse(response.body, symbolize_names: true)
  end

end