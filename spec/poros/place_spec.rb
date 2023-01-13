require 'rails_helper'

RSpec.describe Place do 
  it 'exists and has attributes' do 
    site_info = {properties:
                {
                  name: "Zero Milestone",
                  address: "Ellipse Road Northwest, Washington, DC 20500, United States of America",
                  place_id: "1234"
                }
    }

    tourist_site = Place.new(site_info)
    
    expect(tourist_site).to be_an_instance_of(Place)
    expect(tourist_site.name).to eq("Zero Milestone")
    expect(tourist_site.address).to eq("Ellipse Road Northwest, Washington, DC 20500, United States of America")
    expect(tourist_site.place_id).to eq("1234")

  end
end