class PlacesApiService
  def self.tourist_sights(city)
    response = conn.get('/v2/places') do |req|
      req.params['apiKey'] = ENV['geoapify-key']
      req.params['filter'] = "circle:#{city.longitude},#{city.latitude},20000"
      req.params['categories'] = 'tourism.sights'
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new('https://api.geoapify.com')
  end
end