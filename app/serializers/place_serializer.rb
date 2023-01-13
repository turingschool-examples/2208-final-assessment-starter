class PlaceSerializer # named "places" serializer because this also works for hotels, museums, etc
  include JSONAPI::Serializer

  set_id {nil}
  attributes :name, :address, :place_id
end
