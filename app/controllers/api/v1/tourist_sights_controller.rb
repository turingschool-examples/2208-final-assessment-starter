class Api::V1::TouristSightsController < ApplicationController

def index
  country = params[:country]
  capital = CountryFacade.capital_info(country)
  sights = GeoapifyService.tourism_sites(capital.latitude, capital.longitude)
  render json: sights
end

end
