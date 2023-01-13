class Api::V1::TouristSightsController < ApplicationController
    def index
      country = params[:country]
      capital = CountryFacade.capital_info(country)
      capital_coords = capital.longitude.to_s + "," + capital.latitude.to_s + ",2000"
      # require "pry"; binding.pry

      tourist_sights = TouristSightFacade.capital_tourist_sights(capital_coords)
      render json: TouristSightSerializer.new(tourist_sights)
      # require "pry"; binding.pry
    end
end
