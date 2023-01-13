class Api::V1::TouristSightsController < ApplicationController 
    def index 
      # capital_info = CountryFacade.capital_info(params[:country])
      tourist_sights = TouristSightsFacade.tourist_sights(params[:country])
    end 
end 