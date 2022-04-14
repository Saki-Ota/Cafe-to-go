class Cafe < ApplicationRecord
  belongs_to :user
  has_many :product, dependent: :destroy

  validates :address, :name, :description, presence: true
end
