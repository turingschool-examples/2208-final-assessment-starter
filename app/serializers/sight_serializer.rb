class SightSerializer
  include JSONAPI::Serializer
  set_id { nil }
  attributes :name, :address_line2, :place_id
end
