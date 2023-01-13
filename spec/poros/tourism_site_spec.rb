require "rails_helper"

RSpec.describe TourismSite do
  it "exists and has attributes" do

    data = {
      name: "César Franck",
      address_line2: "Rue Casimir Périer, 75007 Paris, France",
      place_id: "51055960d9168f024059b9782adcf26d4840f00103f901125fcf470000000092030d43c3a9736172204672616e636b"

    }

    tourism_site = TourismSite.new(data)

    expect(tourism_site).to be_an_instance_of(TourismSite)
    expect(tourism_site.name).to eq("César Franck")
    expect(tourism_site.address).to eq("Rue Casimir Périer, 75007 Paris, France")
    expect(tourism_site.place_id).to eq("51055960d9168f024059b9782adcf26d4840f00103f901125fcf470000000092030d43c3a9736172204672616e636b")
  end
end
