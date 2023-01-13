class PlacesService
  def self.conn
    Faraday.new("https://api.geoapify.com") do |faraday|
      faraday.params['apiKey'] = ENV['places-api-key']
    end
  end

  def self.get_url(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end

  def self.tourist_sights(longitude, latitude)
    get_url("v2/places?filter=circle:#{longitude},#{latitude},20000&categories=tourism.sights")
  end
end