class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :location, presence: true

  
  has_many :transactions, dependent: :destroy
  has_many :items, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :purchased_items, through: :transactions, source: :item , dependent: :destroy



  def full_name
    self.first_name + ' ' + self.last_name
  end

  
end