class Api::V1::TouristSightsController < ApplicationController

  def index
    country = params[:country]
    sights = TouristSiteFacade.tourist_sights(country)
    if sights != "Invalid Country Input"
      render json: TouristSightSerializer.new(sights)
    else
      render json: { error: "Invalid Country Input" }, status: 404
    end
  end
end
