class Api::v1::TouristSightsController < ApplicationController 
  def index
    sights = TouristSightsFacade.site(params[:country])
    render json: TouristSightSerializer.new(sights)
  end
end