class Api::V1::TouristSightsController < ApplicationController

  def index
    country = params[:country]
    sights = TouristSiteFacade.tourist_sights(country)
    if !sights.nil?
      render json: TouristSightSerializer.new(sights)
    else
      render json: { data: "Invalid Country Input" }, status: 404
    end
  end
end
