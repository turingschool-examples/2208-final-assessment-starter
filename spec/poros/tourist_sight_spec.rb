require "rails_helper"

RSpec.describe TouristSight do 
  it "exists and has readable attributes" do 
    data = {:type=>"Feature",
            :properties=>
            {:name=>"Greenbelt Museum",
              :country=>"United States",
              :country_code=>"us",
              :state=>"Maryland",
              :county=>"Prince George's County",
              :city=>"Greenbelt",
              :postcode=>"20770",
              :street=>"Crescent Road",
              :housenumber=>"10",
              :lon=>-76.8804461,
              :lat=>39.0005113,
              :state_code=>"MD",
              :formatted=>"Greenbelt Museum, 10 Crescent Road, Greenbelt, MD 20770, United States of America",
              :address_line1=>"Greenbelt Museum",
              :address_line2=>"10 Crescent Road, Greenbelt, MD 20770, United States of America",
              :categories=>["building", "building.historic", "building.tourism", "entertainment", "entertainment.museum", "tourism", "tourism.sights"],
              :details=>["details", "details.building", "details.contact", "details.historic", "details.wiki_and_media"],
              :place_id=>"510259993a593853c059e7a818c110804340f00103f901f31c4e2500000000920310477265656e62656c74204d757365756d"},
            :geometry=>{:type=>"Point", :coordinates=>[-76.8804461, 39.000511300125986]}
          }
    sight = TouristSight.new(data)

    expect(sight).to be_an_instance_of(TouristSight)
    expect(sight.name).to eq("Greenbelt Museum")
    expect(sight.address).to eq("Greenbelt Museum, 10 Crescent Road, Greenbelt, MD 20770, United States of America")
    expect(sight.place_id).to eq("510259993a593853c059e7a818c110804340f00103f901f31c4e2500000000920310477265656e62656c74204d757365756d")
  end
end