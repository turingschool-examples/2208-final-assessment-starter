class TouristSightsService
  def self.get_tourist_sights(lat, lon)
   binding.pry
    response = conn.get('/v2/places', { categories: 'tourism.sights', filter: "circle:#{lon},#{lat},20000" })
    JSON.parse(response.body, symbolize_names: true)
  end

   def self.conn
    Faraday.new('https://api.geoapify.com') do |f|
      f.params['apiKey'] = ENV['geoapify-key']
      f.params['category'] = 'tourism.sights'
       JSON.parse(response.body, symbolize_names: true)

    end
  end
end
