class TouristService
  def self.search_tourist_sites(longitude, latitude)
    get_url("/v2/places?categories=tourism.sights&filter=circle:#{longitude},#{latitude},20000&bias=proximity:#{longitude},#{latitude}")
  end

  def self.get_url(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end

  def self.conn
    Faraday.new('https://api.geoapify.com') do |f|
      f.headers['X-Api-Key'] = ENV['places-key']
    end
  end
end
