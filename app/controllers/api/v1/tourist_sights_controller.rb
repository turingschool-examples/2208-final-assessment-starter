class Api::V1::TouristSightsController < ApplicationController
  def show
    tourist_sights = TouristSightFacade.tourist_sights(params[:country])
    render json: TouristSightSerializer.new(tourist_sights)
  end
end
