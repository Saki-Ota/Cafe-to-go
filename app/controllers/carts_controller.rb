class CartsController < ApplicationController
  def new
    if ( Cart.find_by(user_id = current_user_id).last.active == false )
      @cart = Cart.new(user_id: current_user_id)
    end
  end

  def create
    if ( Cart.find_by(user_id = current_user_id).last.active == false )
      @cart = Cart.new(user_id: current_user_id)
      @cart.save
    end
  end
end
