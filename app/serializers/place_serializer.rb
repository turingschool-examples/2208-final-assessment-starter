class PlaceSerializer
  # include JSONAPI::Serializer
  # set_id :null
  # set_type :tourist_sight
  # attributes :name, :address, :place_id

  def self.serialize_places(places)
    {
      data: 
        places.map do |place|
          {
            id: 'null',
            type: 'tourist_sight',
            attributes: {
              name: place.name,
              address: place.formatted_address,
              place_id: place.place_id
            }
          }
        end
      }
  end

end
