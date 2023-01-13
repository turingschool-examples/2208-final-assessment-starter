class SightService
  def tourism_sights(url = nil, lon = nil, lat = nil, radius = nil)
    get_url("/v2/places?categories=tourism.sights&filter=circle:-87.770231,41.878968,5000&apiKey=be1ecdc3f08a4b25b2cd5095547290a5")
  end

  def get_url(url, params = nil)
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.geoapify.com") do |faraday|
      faraday.params['apiKey'] = ENV.fetch('api_key', nil)
      faraday.params['language'] = 'en-US'
    end
  end
end
