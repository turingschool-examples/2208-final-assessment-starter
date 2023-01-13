class Api::V1::TouristSightsController < ApplicationController 
    def index 
      tourist_sights = TouristSightsFacade.tourist_sights(params[:country])
    end 
end 