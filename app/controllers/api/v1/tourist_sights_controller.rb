class Api::V1::TouristSightsController < ApplicationController 
    def index

        render json: SightSerializer.new(SightFacade.tourist(params[:country]))

    end

end 