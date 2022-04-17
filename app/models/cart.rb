class Cart < ApplicationRecord
  belongs_to :user
  has_many :items
  attribute :active, default: true
end
