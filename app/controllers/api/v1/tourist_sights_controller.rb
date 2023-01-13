class Api::V1::TouristSightsController < ApplicationController 
  def show
    country = params[:country]
    tourist_sights = TouristSightsFacade.spots_info(country)
    render json: TouristSightSerializer.new(tourist_sights)
  end
end