class MakeupSerializer
    include JSONAPI::Serializer
    attributes :product_name, :product_type, :skin_tone, :skin_type, :brand, :shade, :reviews
end 