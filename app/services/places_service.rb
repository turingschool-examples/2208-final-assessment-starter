class PlacesService
  def self.tourist_sights(lat, long)
    response = conn.get("/v2/places") do |f|
      f.params['catergories'] = 'tourism.sights'
      f.params['filter'] = "circle:#{lat},#{long},20000"
      f.params['bias'] = 'proximity:-105.27091225000001,40.014928499999996'
      f.params['limit'] = '20'
    end
    
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new('https://api.geoapify.com') do |f|
      f.params['apiKey'] = ENV['places-key']
    end
  end
end
