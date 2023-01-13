class Api::V1::TouristSightsController < ApplicationController 
  def search
    sights = SightsFacade.sights_info(params[:country])
    render json: SightsSerializer(sights)
  end
end