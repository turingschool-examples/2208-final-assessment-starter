class PlacesService
  def self.find_tourist_sites(longitude, latitude)
    response = conn.get('/v2/places') do |req|
      req.params['categories'] = 'tourism.sights'
      req.params['filter'] = "circle:#{longitude},#{latitude},20000"
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(
      url: 'https://api.geoapify.com',
      params: {'apiKey': ENV['apiKey']}
    )
  end
end