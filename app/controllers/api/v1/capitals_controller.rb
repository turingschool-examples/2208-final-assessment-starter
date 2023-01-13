class Api::V1::CapitalsController < ApplicationController
    def index
        binding.pry
        sights = TouristSightsFacade.get_sights(country)
        render json: TouristSightSerializer.new(sights)

    end
    def show

        country = params[:country]
        capital = CountryFacade.capital_info(country)
        render json: CapitalSerializer.new(capital)
    end


end