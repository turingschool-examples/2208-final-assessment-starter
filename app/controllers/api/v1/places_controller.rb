class Api::V1::PlacesController < ApplicationController
  def index
    country = params[:country]
    capital = CountryFacade.capital_info(country)
    places = PlacesFacade.tourist_sights(capital.latitude, capital.longitude)
    render json: CapitalSerializer.new(places)
  end
end
