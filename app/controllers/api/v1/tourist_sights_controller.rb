class Api::V1::TouristSightsController < ApplicationController 
    def index
        country = params[:country]
        sights = CountryFacade.tourist_sights(country)
        render json: TouristSightSerializer.new(sights)
    end 
end 