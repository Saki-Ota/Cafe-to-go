class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def destroy
    find_item
    @item.destroy
    redirect_to cart_path(@item.cart_id)
  end

  private
  def find_item
    @item = Item.find(params[:id])
  end
end
