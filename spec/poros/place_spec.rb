require 'rails_helper'

RSpec.describe Place do
  describe 'initialize' do
    it 'has readable attributes' do
      parsed_json =  {
        type: "Feature",
        properties: {
            name: "Fort Hahneberg",
            formatted: "Fort Hahneberg, Peter-Herzog-Weg 50, 13591 Berlin, Germany",
            },
            place_id: "51ac4633e7b1462a4059e009e3edc9424a40f00102f90121a708030000000092030e466f7274204861686e6562657267"
        }

      place = Place.new(parsed_json)

      expect(place.name).to eq(parsed_json[:properties][:name])
      expect(place.formatted_address).to eq(parsed_json[:properties][:formatted])
      expect(place.place_id).to eq(parsed_json[:properties][:place_id])
    end
  end
end