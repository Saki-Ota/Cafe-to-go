class Product < ApplicationRecord
  belongs_to :cafe

  validates :category, :name, :description, :price, presence: true
  attribute :hidden, default: false
end
