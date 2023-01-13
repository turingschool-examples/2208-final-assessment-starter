class TouristSightsService
  def self.get_tourist_sights(longitude, latitude)
     get_url("v2/places?filter=circle:#{longitude},#{latitude},20000&categories=tourism.sights")
  end

  def self.get_url(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end

   def self.conn
    Faraday.new('https://api.geoapify.com') do |f|
      f.params['apiKey'] = ENV['geoapify-key']
    end
  end
end
