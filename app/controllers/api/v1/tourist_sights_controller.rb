class Api::V1::TouristSightsController < ApplicationController 
  def show
    country = params[:country]
    begin
      tourist_sights = TouristSightsFacade.spots_info(country)
    rescue
      render json: error, status: 500
    else
      render json: TouristSightSerializer.new(tourist_sights)
    end
  end

  def error
    {
      status: "error",
      message: "Please enter valid country. Example: if England does not work, try United Kingdom.",
      code: "500"
    }
  end
end