class Api::V1::TouristSightsController < ApplicationController 
  def index 
    lat, long = CountryFacade.capital_info(params[:country])
    sights = SightsFacade.get_sights(long, lat)
     if sights
      render json: TouristSightSerializer.sights(sights)
     else 
      render json: ErrorSerializer.invalid_country, status: 404
     end
  end
end