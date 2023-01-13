class TouristSightsSerializer
    include JSONAPI::Serializer 

    set_id {nil}
    attributes :name,
               :full_address,
               :place_id
end 