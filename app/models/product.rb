class Product < ApplicationRecord
  belongs_to :cafe

  validates :category, :name, :price, presence: true
  attribute :hidden, default: false
end
