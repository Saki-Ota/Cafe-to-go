class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :items, through: :carts
  has_many :carts
  validates :password, presence: true, length: { minimum: 6 }
  validates :email, uniqueness: true

  after_create :create_cart

  private

  def create_cart
    Cart.create(user_id: self.id)
  end
end
