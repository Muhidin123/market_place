class Item < ApplicationRecord
    has_one_attached :photo
    
    has_many :transactions
    belongs_to :user
end
