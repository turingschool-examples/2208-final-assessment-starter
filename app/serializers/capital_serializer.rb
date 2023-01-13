class CapitalSerializer
  include JSONAPI::Serializer

  set_id { nil }
  attributes :city, :country, :country_code, :latitude, :longitude
end
