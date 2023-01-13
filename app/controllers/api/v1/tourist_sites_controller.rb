class Api::V1::TouristSitesController < ApplicationController
  def show  
    if TouristSitesFacade.tourist_sites(params[:country]) != nil 
      render json: TouristSiteSerializer.new(TouristSitesFacade.tourist_sites(params[:country]))
    else
      render json: {error: "cannot find tourist sites without a valid country"}, status: 404
    end
  end
end