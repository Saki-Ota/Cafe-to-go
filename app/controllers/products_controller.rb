class ProductsController < ApplicationController
  def index
    @products = Product.all # Need to Change to only include products from this cafe
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save
  end

  def product_params
    params.require(:product).permit(:category, :description, :name, :hidden, :price)
  end
end
