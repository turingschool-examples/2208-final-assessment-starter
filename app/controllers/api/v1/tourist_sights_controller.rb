class Api::V1::TouristSightsController < ApplicationController
  def index
    country_info = CountryFacade.capital_info(params[:country])
    render json: TouristSightSerializer.new(TouristSightFacade.tourist_sights(country_info.longitude, country_info.latitude))
  end
end