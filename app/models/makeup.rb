class Makeup < ApplicationRecord
    has_many :reviews, dependent: :destroy 
end
