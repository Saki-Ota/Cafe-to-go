class User < ApplicationRecord
  has_many :items, through: :carts
  has_many :cafes
end
