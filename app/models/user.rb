class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :items, through: :carts
  has_many :carts
  # validates :phone_number, :first_name, :last_name, :email, presence: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :email, uniqueness: true
end
