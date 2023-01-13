class Api::V1::TouristsController < ApplicationController 
  def show
    country = params[:country]
    tourist_spots = TouristSpotsFacade.spots_info(country)
    render json: TouristSpotsSerializer.new(tourist_spots)
  end
end