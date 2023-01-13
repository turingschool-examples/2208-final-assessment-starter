require 'rails_helper'

RSpec.describe PlacesFacade do
  it '.tourist_sights' do
    sights = PlacesFacade.tourist_sights('France')
    expect(sights).to be_an(Array)
    expect(sights.first).to be_an_instance_of(Place)
  end
end 