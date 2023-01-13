require 'rails_helper'

RSpec.describe TouristSite do 
  it 'exists and has attributes' do 
    tourist_sites = TouristSitesFacade.tourist_sites("united states")
    expect(tourist_sites).to be_an Array 
    site = tourist_sites[0]
    expect(site).to be_an_instance_of(TouristSite)
    expect(site.name).to be_a String 
    expect(site.address).to be_a String 
    expect(site.place_id).to be_a String 
  end
end