class Api::V1::TouristSightsController < ApplicationController
  def index
    # filter = 'circle:2.3200410217200766,48.8588897,20000'
    # limit = 20

    # conn = Faraday.new(url: "https://api.geoapify.com") do |f|
    #   f.params['apiKey'] = ENV['geo-api-key']
    #   f.params['categories'] = ['tourism.sights']
    #   f.params['filter'] = filter
    #   f.params['limit'] = limit
    # end

    # response = conn.get("/v2/places")

    # parsed = JSON.parse(response.body, symbolize_names: true)

    # tourist_sights = parsed[:features].map do |f|
    #   TouristSight.new(f)
    # end
    # require 'pry'; binding.pry
    tourist_sights = TouristSightFacade.get_tourist_sight(params[:country])

    render json: TouristSightSerializer.new(tourist_sights)
  end
end