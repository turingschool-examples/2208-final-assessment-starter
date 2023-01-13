module Faraday
  module NestedParamsEncoder
    def self.escape(arg)
      arg
    end
  end
  module FlatParamsEncoder
    def self.escape(arg)
      arg
    end
  end
end

class PlacesService
  def self.tourist_sights(lat, long)
    response = conn.get("/v2/places") do |f|
      f.params['categories'] = 'tourism.sights'
      f.params['filter'] = "circle:#{long},#{lat},20000"
      f.params['bias'] = "proximity:#{long},#{lat}"
      f.params['limit'] = '20'
      f.options.params_encoder = Faraday::FlatParamsEncoder
    end

    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new('https://api.geoapify.com') do |f|
      f.params['apiKey'] = ENV['places-key']
    end
  end
end
