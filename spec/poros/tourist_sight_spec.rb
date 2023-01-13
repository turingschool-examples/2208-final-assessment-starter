require 'rails_helper'

RSpec.describe TouristSight do 
  it 'exists' do
    tourist_sight_json = {
      "name": "Crypte Archéologique du Parvis Notre-Dame",
      "country": "France",
      "country_code": "fr",
      "region": "Metropolitan France",
      "state": "Ile-de-France",
      "city": "Paris",
      "postcode": "75004",
      "district": "Paris",
      "suburb": "4th Arrondissement",
      "city_block": "Quartier Les Îles",
      "street": "Parvis Notre-Dame - Place Jean-Paul II",
      "lon": 2.348198116376467,
      "lat": 48.85354265,
      "formatted": "Crypte Archéologique du Parvis Notre-Dame, Parvis Notre-Dame - Place Jean-Paul II, 75004 Paris, France",
      "address_line1": "Crypte Archéologique du Parvis Notre-Dame",
      "address_line2": "Parvis Notre-Dame - Place Jean-Paul II, 75004 Paris, France",
      "categories": [
          "entertainment",
          "entertainment.museum",
          "no_access",
          "tourism",
          "tourism.sights",
          "tourism.sights.archaeological_site"
      ],
      "details": [
          "details",
          "details.contact",
          "details.facilities",
          "details.historic",
          "details.wiki_and_media"
      ],
      "datasource": {
          "sourcename": "openstreetmap",
          "attribution": "© OpenStreetMap contributors",
          "license": "Open Database Licence",
          "url": "https://www.openstreetmap.org/copyright",
          "raw": {
              "fax": "+33143293055",
              "fare": "full:7;discount:5;free: under 14",
              "name": "Crypte Archéologique du Parvis Notre-Dame",
              "phone": "+33155425010",
              "access": "no",
              "osm_id": 159896046,
              "name:ko": "노트르담",
              "tourism": "museum",
              "website": "http://crypte.paris.fr/",
              "historic": "archaeological_site",
              "location": "underground",
              "operator": "Musée Carnavalet",
              "osm_type": "w",
              "wikidata": "Q3005760",
              "site_type": "crypt",
              "wikipedia": "fr:Crypte archéologique du parvis Notre-Dame",
              "website:en": "http://crypte.paris.fr/en/crypt",
              "wheelchair": "no",
              "opening_hours": "none"
          }
        },
        "place_id": "516039593614c9024059307dac45416d4840f00102f901eed187090000000092032a4372797074652041726368c3a96f6c6f676971756520647520506172766973204e6f7472652d44616d65"
      }
    
    tourist_sight = TouristSight.new(tourist_sight_json)

    expect(tourist_sight).to be_a TouristSight
    expect(tourist_sight.name).to eq("Crypte Archéologique du Parvis Notre-Dame")
    expect(tourist_sight.address).to eq("Crypte Archéologique du Parvis Notre-Dame, Parvis Notre-Dame - Place Jean-Paul II, 75004 Paris, France")
    expect(tourist_sight.place_id).to eq("516039593614c9024059307dac45416d4840f00102f901eed187090000000092032a4372797074652041726368c3a96f6c6f676971756520647520506172766973204e6f7472652d44616d65")
  end
end
