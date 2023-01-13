class Api::V1::TouristSightsController < ApplicationController 
    def index 
      capital_info = CountryFacade.capital_info(params[:country])
      binding.pry
    end 
end 