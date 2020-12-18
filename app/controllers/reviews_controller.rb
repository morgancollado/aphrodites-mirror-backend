class ReviewsController < ApplicationController
    def index 
        reviews = Review.all
        render json: ReviewSerializer.new(reviews)
    end 

    def create
        review = Review.new(review_params)
        if review.save 
            render json: ReviewSerializer.new(review), status: :accepted
        else
            render json: {errors: review.errors.full_messages}, status: :unprocessible_entity
        end 
    end 

    private 

    def review_params
        params.require(:review).permit(:comment, :stars, :makeup_id)
    end 
end
