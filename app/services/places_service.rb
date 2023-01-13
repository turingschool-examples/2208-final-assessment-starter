class PlacesService
  def get_sights(long, lat)
    response = conn.get("/v2/places?") do |req|
      req.params[:categories] = 'tourism.sights'
      req.params[:filter] = "circle:#{long},#{lat},20000"
      req.params[:apiKey] = ENV['api-places-key']
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new("https://api.geoapify.com")
  end
end