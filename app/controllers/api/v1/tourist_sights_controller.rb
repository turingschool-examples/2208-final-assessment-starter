class Api::V1::TouristSightsController < ApplicationController
  def show
    capital = CountryFacade.capital_info(params[:country])
    tourist_sights = TouristSightFacade.tourist_sights(capital.longitude, capital.latitude)
    render json: TouristSightSerializer.new(tourist_sights)
  end
end
