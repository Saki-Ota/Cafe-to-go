class User < ApplicationRecord
  has_many :items, through: :carts

  validates :phone_number, :first_name, :last_name, :email, presence: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :email, uniqueness: true
end
