class Api::V1::TouristSightsController < ApplicationController
  def index
    capital = CountryFacade.capital_info(params[:country])
    
    tourist_sights = PlaceFacade.get_tourist_places(capital.longitude, capital.latitude)
    # require 'pry'; binding.pry
    render json: PlaceSerializer.serialize_places(tourist_sights).to_json
  end
end