class Api::V1::TouristSightsController < ApplicationController 
    def index

        render json: SightSerializer.new(CountryFacade.capital_info(params[:country]))
    end

end 