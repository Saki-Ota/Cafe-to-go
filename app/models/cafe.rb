class Cafe < ApplicationRecord
  belongs_to :user
  has_many :products, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :address, :name, :description, presence: true
end
