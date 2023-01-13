class PlacesService
  def self.get_place(lon, lat)
    get_url("/v2/places?categories=tourism.sights&filter=circle:#{lon},#{lat},20000")
  end

  def self.get_url(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end

  def self.conn
    Faraday.new('https://api.geoapify.com') do |f|
      f.params['apiKey'] = ENV['places-key']
    end
  end
end