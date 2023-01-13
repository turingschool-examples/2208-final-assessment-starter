class TouristSightsSerializer
    include JSONAPI::Serializer 

    set_id {nil}
    attributes :name,
               :formatted_address,#not full per instructions
               :place_id
end 