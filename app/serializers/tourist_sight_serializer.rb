class TouristSightSerializer
  include JSONAPI::Serializer
  binding.pry
  set_id {nil}
  attributes :name, :formatted_address, :place_id
end