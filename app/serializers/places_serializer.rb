class PlacesSerializer
  include JSONAPI::Serializer

  set_id { nil }
  attributes :type, :attributes
end
