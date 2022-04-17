class ProductsController < ApplicationController
  def index
    @cafe = Cafe.find(params[:cafe_id])
    @products = Product.where(cafe_id: @cafe.id) # Need to Change to only include products from this cafe
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to cafe_product_path(@product)
  end

  def create
    @cafe = Cafe.find(params[:cafe_id])
    @product = Product.new(product_params)
    @product.cafe_id = @cafe.id
    @product.save
    redirect_to cafe_products_path(@product)
  end

  def product_params
    params.require(:product).permit(:category, :description, :name, :price)
  end
end
