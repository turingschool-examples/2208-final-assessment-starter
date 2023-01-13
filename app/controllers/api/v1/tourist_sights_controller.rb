class Api::V1::TouristSightsController < ApplicationController
  def index
    render json: TouristSightsFacade.get_sights(country)
  end
end