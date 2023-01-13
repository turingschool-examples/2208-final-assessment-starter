class Api::V1::TouristSightsController < ApplicationController 
  def index 
    require 'pry'; binding.pry
    location = CountryFacade.capital_info(country)
    sights = SightsFacade.get_sights(location)
     if sights
      render json: TouristSightSerializer.sights(sights)
     else 
      render json: ErrorSerializer.invalid_country, status: 404
     end
  end
end