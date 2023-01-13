class Api::V1::CapitalsController < ApplicationController 
    def show 
        country = params[:country]
        @_capital ||= CountryFacade.capital_info(country)
        if @_capital != nil 
            render json: CapitalSerializer.new(@_capital)
        else 
            render json: {error: "cannot find capital info without a valid country"}, status: 404

        end
    end 
end 