class Api::V1::TouristSightsController < ApplicationController 
  def index 
    tourist_sights = TouristSightsFacade.tourist_sights(params[:country])
    render json: TouristSightSerializer.new(tourist_sights)
  end 
end 