class Api::V1::TouristSightsController < ApplicationController
  def index
    capital = CountryFacade.capital_info(params[:country])

    if capital.nil?
      render json: {error: 'country not found'}, status: 404
    else
      tourist_sights = PlaceFacade.get_tourist_places(capital.longitude, capital.latitude)
  
      render json: PlaceSerializer.serialize_places(tourist_sights).to_json
    end
  end
end