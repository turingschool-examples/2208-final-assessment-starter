require 'rails_helper'

RSpec.describe PlacesFacade do 
  it 'returns tourist sites in 20000m radius of capital city of a country' do 
    sites = PlacesFacade.tourist_sites("united states")
    expect(sites[0]).to be_an_instance_of(Place)
  end

end