class Api::V1::TouristSightsController < ApplicationController
  def index
    @sights = TouristSightsFacade.tourist_sights(params[:country])
    binding.pry
    render json: TouristSightSerializer.new(@sights)
    binding.pry
  end
end
