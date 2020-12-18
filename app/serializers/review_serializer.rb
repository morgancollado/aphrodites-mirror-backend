class ReviewSerializer
    include JSONAPI::Serializer
    attributes :comment, :stars, :makeup_id, :id
end 