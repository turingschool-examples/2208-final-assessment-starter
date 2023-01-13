class PlacesService 
  def self.conn
    Faraday.new('https://api.geoapify.com') do |f|
      f.params['apiKey'] = ENV['geo-api-key']
      f.params['categories'] = 'tourism.sights'
    end
  end


  def self.get_sights(lat, long)
    response = conn.get("/v2/places?filter=circle#{long},#{lat},20000")

    data = JSON.parse(response.body, symbolize_names: true)
  end
end