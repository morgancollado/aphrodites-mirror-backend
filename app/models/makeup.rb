class Makeup < ApplicationRecord
    has_many :reviews, dependent: :destroy 

    def avgreview 
        if reviews.length > 0
             reviews.map{|r| r.stars}.reduce(:+)/reviews.length
        else
            return 0
        end 
    end 

end
