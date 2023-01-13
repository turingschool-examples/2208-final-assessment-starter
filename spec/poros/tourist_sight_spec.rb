require 'rails_helper'

RSpec.describe TouristSight do
  it 'exists and has attributes' do
    place_info = {
      name: 'U.S. bicentennial commemoration/time capsule',
      country: 'United States',
      country_code: 'us',
      state: 'Colorado',
      county: 'Boulder County',
      city: 'Boulder',
      postcode: '80306',
      suburb: 'Pearl Street Mall',
      street: 'Pearl Street Mall',
      lon: -105.27805266847703,
      lat: 40.01833035,
      state_code: 'CO',
      formatted: 'U.S. bicentennial commemoration/time capsule, Pearl Street Mall, Boulder, CO 80306, United States of America',
      address_line1: 'U.S. bicentennial commemoration/time capsule',
      address_line2: 'Pearl Street Mall, Boulder, CO 80306, United States of America',
      categories: [
        'tourism',
        'tourism.sights',
        'tourism.sights.memorial'
      ],
      details: [
        'details.historic'
      ],
      datasource: {
        sourcename: 'openstreetmap',
        attribution: '© OpenStreetMap contributors',
        license: 'Open Database Licence',
        url: 'https://www.openstreetmap.org/copyright',
        raw: {
          name: 'U.S. bicentennial commemoration/time capsule',
          osm_id: 621_297_736,
          historic: 'memorial',
          osm_type: 'w',
          historic_1: 'time capsule',
          inscription: 'August 6, 1977 Beneath this boulder lies a time capsule placed by the city of Boulder Centennial-Bicentennial Commission for the Boulder Centennial-Bicentennial Commission  Open the capsule July 4, 2075 City government Mayor Frank Buchanan …'
        }
      },
      distance: 716,
      place_id: '51c83a699dcb515ac059fffe20ae58024440f00102f901484008250000000092032c552e532e20626963656e74656e6e69616c20636f6d6d656d6f726174696f6e2f74696d652063617073756c65'
    }

    place = TouristSight.new(place_info)

    expect(place).to be_an_instance_of(TouristSight)
    expect(place.name).to eq('U.S. bicentennial commemoration/time capsule')
    expect(place.address).to eq('Pearl Street Mall, Boulder, CO 80306, United States of America')
    expect(place.place_id).to eq('51c83a699dcb515ac059fffe20ae58024440f00102f901484008250000000092032c552e532e20626963656e74656e6e69616c20636f6d6d656d6f726174696f6e2f74696d652063617073756c65')
  end
end
