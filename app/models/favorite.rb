class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :user_id, uniqueness: {scope: :item_id, message: "This item is already in your Favorites!"}
end
