class Api::V1::TouristSightsController < ApplicationController
  def index
    capital_info = CountryFacade.capital_info(params[:country]) #this feels illegal chaining facade calls? but worse calling facade within facade
    tourist_sights = PlacesFacade.places(capital_info)
    render json:PlaceSerializer.new(tourist_sights)
  end
end
