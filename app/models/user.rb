class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :transactions
  has_many :items
  has_many :favorites
  has_many :purchased_items, through: :transactions, source: :item

  def full_name
    self.first_name + ' ' + self.last_name
  end

  
end