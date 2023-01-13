require 'rails_helper'

RSpec.describe TouristSitesFacade do 
  it 'returns tourist sites in 20000m radius of capital city of a country', :vcr do 
    sites = TouristSitesFacade.tourist_sites("united states")
    expect(sites[0]).to be_an_instance_of(TouristSite)
  end

  it 'returns nothing if state is invalid', :vcr do 
    sites = TouristSitesFacade.tourist_sites("dog")
    expect(sites).to eq(nil) 
  end
end