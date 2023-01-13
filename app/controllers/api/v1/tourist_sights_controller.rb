class Api::V1::TouristSightsController < ApplicationController 
  def search
    sights = TouristSightsFacade.sights_info(params[:country])
    render json: TouristSightSerializer.new(sights)
  end
end