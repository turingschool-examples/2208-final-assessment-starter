class Api::V1::TouristSightsController < ApplicationController
  def index
    country = params[:country]
    render json: TouristSightsFacade.get_tourist_sights(country)
  end
end