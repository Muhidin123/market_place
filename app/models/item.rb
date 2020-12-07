class Item < ApplicationRecord
    has_one_attached :photo
    
    has_many :transactions
    belongs_to :user

    
    validates :title, presence: true
    validates :description, presence: true
    validates :description, length: { maximum: 250}
    validates :price, presence: true

end
