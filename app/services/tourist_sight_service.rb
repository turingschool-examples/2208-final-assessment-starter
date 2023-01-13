class TouristSightService
  def self.find_sights(filter)
    # filter = 'circle:2.3200410217200766,48.8588897,20000'
    # limit = 20

    conn = Faraday.new(url: "https://api.geoapify.com") do |f|
      f.params['apiKey'] = ENV['geo-api-key']
      f.params['categories'] = ['tourism.sights']
      f.params['filter'] = filter
      # f.params['limit'] = limit
    end

    response = conn.get("/v2/places")

    get_json(response)
    # parsed = JSON.parse(response.body, symbolize_names: true)

    # tourist_sights = parsed[:features].map do |f|
    #   TouristSight.new(f)
    # end
  end

  def self.get_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end