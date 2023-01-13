class Api::V1::TouristSightsController < ApplicationController 
  def index 
  
    t_sights = TouristSightsFacade.find_sights(params[:country])

  end
end