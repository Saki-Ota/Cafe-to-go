class CartsController < ApplicationController
  def checkout
    @cart = Cart.where(user_id: current_user.id, active: true).first
  end

  def checkout_cart
    @cart = Cart.where(user_id: current_user.id, active: true).first
    @cart.active = false
    @cart.save
    Cart.create(user_id: current_user.id, active: true)
    redirect_to cafes_path
  end

  def show
    @cart = Cart.where(user_id: current_user.id, active: true).first
  end

  def transactions
    @carts = Cart.where(user_id: current_user.id, active: false)
  end
end
