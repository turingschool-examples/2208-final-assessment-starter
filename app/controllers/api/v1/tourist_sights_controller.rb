class Api::V1::TouristSightsController < ApplicationController 
  def index 
    render json: TouristSightSerializer.new(TouristSightsFacade.tourist_sights(params[:country]))
    # tourist_sights = TouristSightsFacade.tourist_sights(params[:country])
  end 
end 