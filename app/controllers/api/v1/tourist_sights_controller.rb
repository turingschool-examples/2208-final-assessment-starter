class Api::V1::TouristSightsController < ApplicationController 
  def index 
    binding.pry
    t_sights = TouristSightsFacade.find_sights(params[:country])

  end
end