class Api::V1::TouristSightsController < ApplicationController
    def index
      country = params[:country]
      capital = CountryFacade.capital_info(country)
      capital_coords = capital.latitude.to_s + "," + capital.longitude.to_s
      require "pry"; binding.pry
      # require "pry"; binding.pry
    end
end
