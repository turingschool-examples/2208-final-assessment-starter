class Api::V1::TouristSitesController < ApplicationController
  def show  
    PlacesFacade.tourist_sites(params[:country])
  end
end