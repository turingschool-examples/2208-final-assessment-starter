class Api::V1::TouristSitesController < ApplicationController
  def show  
    render json: TouristSiteSerializer.new(TouristSitesFacade.tourist_sites(params[:country]))
  end
end