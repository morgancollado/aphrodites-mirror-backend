class MakeupsController < ApplicationController
    def index 
        makeups = Makeup.all
        render json: MakeupSerializer.new(makeups)
    end 

    def create
        makeup = Makeup.new(makeup_params)
        if makeup.save 
            render json: makeup, status: :accepted
        else
            render json: {errors: makup.errors.full_messages}, status: :unprocessible_entity
        end 
    end 

    private 

    def makeup_params
        params.require(:makeup).permit(:product_name, :product_type, :skin_type, :brand, :shade)
    end 
end
