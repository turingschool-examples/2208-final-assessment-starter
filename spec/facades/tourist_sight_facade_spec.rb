require 'rails_helper'

RSpec.describe TouristSiteFacade do
  it "exists" do
    t_s_f = TouristSiteFacade.new

    expect(t_s_f).to be_an_instance_of(TouristSiteFacade)
  end

  describe "Class methods" do
    describe "#tourist_sights" do
      it "returns tourist sight objects", :vcr do
        country = "france"

        t_s_f = TouristSiteFacade.tourist_sights(country)
        expect(t_s_f).to be_a Array
        expect(t_s_f.first).to be_a TouristSite
      end
    end
  end
end
