class Api::V1::SightsController < ApplicationController
  def index
    country = params[:country]
    sights = CountryFacade.tourist_sights(country)
    render json: SightsSerializer.new(sights)
  end
end