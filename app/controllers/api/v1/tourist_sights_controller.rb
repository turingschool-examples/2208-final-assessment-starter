class Api::V1::TouristSightsController < ApplicationController
  def index
    country = params[:country]
    sights = TouristSightsFacade.sights(country)

    render json: { 'sight': 'tourist'}
  end
end