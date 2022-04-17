class CartsController < ApplicationController
  def checkout

  end

  def show
    @cart = Cart.find_by(user_id: current_user.id)
  end
end
