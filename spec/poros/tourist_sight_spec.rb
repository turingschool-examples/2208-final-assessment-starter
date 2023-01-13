require "rails_helper"

RSpec.describe "Tourist Sight Poros" do
  describe "attributes" do
    it "exists and has attributes" do
      attributes = {properties: {name: "Pudding Pops Fair", formatted: "6344 Why is serializer not working, Bend, Or, 97701", place_id: "33334444"}}
      sight = TouristSight.new(attributes)

      expect(sight).to be_an_instance_of(TouristSight)
      expect(sight.name).to eq("Pudding Pops Fair")
      expect(sight.formatted_address).to eq("6344 Why is serializer not working, Bend, Or, 97701")
      expect(sight.place_id).to eq("33334444")
      
    end 
  end
end