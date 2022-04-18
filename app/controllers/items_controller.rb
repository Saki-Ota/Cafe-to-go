class ItemsController < ApplicationController
  def destroy
    @item = Item.find(params[:item_id])
    @item.destroy
    redirect_to your_cart_path
  end

  def destroy_from_cafe
    @item = Item.find(params[:item_id])
    @cafe = Cafe.find(Product.find(@item.product_id).cafe_id)
    @item.destroy

    redirect_to cafe_path(@cafe)
  end

  def create
    @user_id = current_user.id
    @cart = Cart.where(user_id: current_user.id, active: true).first
    @item = Item.new(cart_id: @cart.id, product_id: params[:pid])
    @item.save
    @cafe = Cafe.find(Product.find(@item.product_id).cafe_id)
    redirect_to cafe_path(@cafe)
  end

  # TODO:
  def create_from_cart_page
    @user_id = current_user.id
    @cart = Cart.where(user_id: current_user.id, active: true).first
    @item = Item.new(cart_id: @cart.id, product_id: params[:pid])
    @item.save
    @cafe = Cafe.find(Product.find(@item.product_id).cafe_id)
    redirect_to your_cart_path
  end
end
