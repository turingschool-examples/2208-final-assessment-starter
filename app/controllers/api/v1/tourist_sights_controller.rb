class Api::V1::TouristSightsController < ApplicationController
  def index
    country = params[:country]
    tourist_sights = TouristSightsFacade.sights(country)
    
    render json: TouristSightsSerializer.new(tourist_sights)
  end
end