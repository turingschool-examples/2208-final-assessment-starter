class Api::V1::CapitalsController < ApplicationController
    def show
        if params[:country].downcase != "england"
          country = params[:country]
        else
          country = "United Kingdom"
        end
        capital = CountryFacade.capital_info(country)
        render json: CapitalSerializer.new(capital)
    end
end
