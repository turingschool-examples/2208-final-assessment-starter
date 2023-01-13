class SightService
  def tourism_sights(lon = nil, lat = nil, radius = nil)
    get_url("/v2/places?categories=tourism.sights&filter=circle:#{lon},#{lat},20000")
  end

  def get_url(url, params = nil)
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.geoapify.com") do |faraday|
      faraday.params['apiKey'] = ENV.fetch('apiKey', nil)
      faraday.params['language'] = 'en-US'
    end
  end
end
