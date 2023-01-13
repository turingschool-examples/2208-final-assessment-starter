class Api::V1::TouristSightsController < ApplicationController 
  def index 
     if blah 
      render json: TouristSightSerializer.sights(sights)
     else 
      render json: #put an error here 
     end
  end
end