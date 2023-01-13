class Api::V1::CapitalsController < ApplicationController 
    def show 
        country = params[:country]

        if CountryFacade.capital_info(country) != nil 
            capital = CountryFacade.capital_info(country)
            render json: CapitalSerializer.new(capital)
        else 
            render json: {error: "cannot find capital info without a valid country"}, status: 404

        end
    end 
end 