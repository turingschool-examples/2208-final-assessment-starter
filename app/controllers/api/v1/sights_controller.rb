class Api::V1::SightsController < ApplicationController
  def index
    country = params[:country]
    tourist_sights = CountryFacade.tourist_sights(country)
    render json: TouristSightSerializer.new(tourist_sights)
  end
end