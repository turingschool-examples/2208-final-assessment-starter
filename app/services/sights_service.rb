require 'faraday'
require 'json'

class SightsService 
  def self.conn
    Faraday.new('https://api.geoapify.com') do |f|
      f.params['apiKey'] = ENV['geo-api-key']
    end
  end

  def self.locations(long, lat)
    response = conn.get('/v2/places', { categories: 'tourism.sights', filter: "circle:#{long},#{lat},20000" })
    parse(response)
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end

