class ItemsController < ApplicationController
  def destroy
    @item = Item.find(params[:item_id])
    @item.destroy
    redirect_to your_cart_path
  end

  def create
    @user_id = current_user.id
    @cart = Cart.where(user_id: current_user.id, active: true).first
    @item = Item.new(cart_id: @cart.id, product_id: params[:pid])
    @item.save
  end
end
