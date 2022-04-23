class Product < ApplicationRecord
  belongs_to :cafe
  has_many :items, dependent: :destroy
  validates :category, :name, :price, presence: true
  attribute :hidden, default: false
end
