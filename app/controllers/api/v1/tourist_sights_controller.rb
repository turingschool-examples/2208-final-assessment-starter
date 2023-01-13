class Api::V1::TouristSightsController < ApplicationController
    def index
      country = params[:country]
      capital = CountryFacade.capital_info(country)

      tourist_sights = TouristSightFacade.capital_tourist_sights(capital)
      render json: TouristSightSerializer.new(tourist_sights)
    end
end
