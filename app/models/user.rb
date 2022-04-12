class User < ApplicationRecord
  has_many :items, through: :carts
end
