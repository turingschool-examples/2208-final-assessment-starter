class TouristSightSerializer
  include JSONAPI::Serializer

  set_id {nil}
  attributes :name, :formatted_address, :place_id
end