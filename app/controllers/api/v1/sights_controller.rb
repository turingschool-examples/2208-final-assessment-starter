class Api::V1::SightsController < ApplicationController
  def index
    capital = CountryFacade.capital_info(request.params[:country])
    render json: TouristSightSerializer.new(SightFacade.new.tourism_sights(capital.longitude.to_s, capital.latitude.to_s))
  end
end