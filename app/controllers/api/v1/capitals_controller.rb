class Api::V1::CapitalsController < ApplicationController 
    def show 
        # country = params[:country]
        # capital = CountryFacade.capital_info(country)
        # render json: CapitalSerializer.new(capital)

        render json: CapitalSerializer.new(CountryFacade.capital_info(params[:country]))
    end 
end 