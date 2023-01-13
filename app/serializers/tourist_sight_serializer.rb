class TouristSightSerializer
  include JSONAPI::Serializer
  set_id {nil}
  attributes :name, :place_id
  attribute :address do |obj|
    obj.full_address
  end
end
