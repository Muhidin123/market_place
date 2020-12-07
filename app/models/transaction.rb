class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :item_id, uniqueness: {scope: :user_id}
  validates :review, presence: true
  validates :rating, presence: true
end
