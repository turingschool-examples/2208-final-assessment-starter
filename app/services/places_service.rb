class PlacesService 
  def self.conn
    Faraday.new('https://api.geoapify.com') do |f|
      f.params['apiKey'] = ENV['geo-api-key']
    end
  end


  def self.get_sights(lat, long)
    response = conn.get("/v2/places?filter=circle#{long},#{lat},20000")

    data = JSON.parse(response.body, symbolize_names: true)
  end
end

/v2/places?categories=tourism.sights&filter=circle:-122.908969,47.007259,20000&bias=proximity:-122.908969,47.007259&limit=20&apiKey=b560d0ced2ae4eda847e07748c8801e5
