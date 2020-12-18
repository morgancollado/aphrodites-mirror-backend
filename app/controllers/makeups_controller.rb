class MakeupsController < ApplicationController
    def index 
        makeups = Makeup.all
        render json: MakeupSerializer.new(makeups)
    end 

    def create
        makeup = Makeup.new(makeup_params)
        if makeup.save 
            render json: MakeupSerializer.new(makeup), status: :accepted
        else
            render json: {errors: makeup.errors.full_messages}, status: :unprocessible_entity
        end 
    end 

    private 

    def makeup_params
        params.require(:makeup).permit(:product_name, :product_type, :skin_type, :skin_tone, :brand, :shade)
    end 
end
