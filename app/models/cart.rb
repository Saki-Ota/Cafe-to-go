class Cart < ApplicationRecord
  belongs_to :user
  attribute :active, default: true
end
