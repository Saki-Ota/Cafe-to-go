class Item < ApplicationRecord
  belongs_to :cart
  belongs_to :product, dependent: :destroy
end
