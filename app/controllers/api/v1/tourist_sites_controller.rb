class Api::V1::TouristSitesController < ApplicationController
  def show  
    render json: PlacesSerializer.new(PlacesFacade.tourist_sites(params[:country]))
  end
end