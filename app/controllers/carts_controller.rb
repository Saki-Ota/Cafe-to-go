class CartsController < ApplicationController
  def show
    @cart = Cart.find(params[:id])
    @items = Item.all
  end
end
