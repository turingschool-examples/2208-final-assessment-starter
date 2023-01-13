require 'rails_helper'

RSpec.describe 'Get tourist sights' do
  it 'returns tourist sights info as json' do
    categories= "tourist.sights"
    cirle = "2.3483915,48.8588897,20000 "
    get "https://api.geoapify.com/api/v1/places?categories=#{categories}&filter=circle:2.3483915,48.8588897,20000&bias=proximity:2.3200410217200766,48.8534951&limit=20&apiKey=68fd0c7fe9c1400a8e9aea608728b774"
  end
end