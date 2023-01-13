class Api::v1::TouristSightsController < ApplicationController 
  def index
    sights = TouristSightsFacade.tourist_sights(params[:country])
    render json: TouristSightSerializer.serialize(sights)
    require 'pry'; binding.pry
  end
end