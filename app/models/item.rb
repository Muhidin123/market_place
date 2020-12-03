class Item < ApplicationRecord
    has_many_attached :photos
    
    has_many :transactions
    belongs_to :user
end
