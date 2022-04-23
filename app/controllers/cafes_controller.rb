class CafesController < ApplicationController

  def index
    @cafes = Cafe.all
    @markers = @cafes.geocoded.map do |cafe|
      {
        lat: cafe.latitude,
        lng: cafe.longitude,
        info_window: render_to_string(partial: "info_window", locals: { cafe: cafe })
      }
    end
  end

  def show
    @cafe = Cafe.find(params[:id])
    @products = Product.all
    if user_signed_in?
      @cart = Cart.where(user_id: current_user.id, active: true).first
    end
<<<<<<< HEAD
=======
    if @cafe.geocoded?
      @markers = [{
        lat: @cafe.latitude,
        lng: @cafe.longitude,
        info_window: render_to_string(partial: "info_window", locals: { cafe: @cafe })
      }]
    end
>>>>>>> 1a74b9de35a33ab16699fa3125635d50a64cb391
  end

  def new
    @cafe = Cafe.new
  end

  def create
    @user_id = current_user.id
    @cafe = Cafe.new(cafe_params)
    @cafe.user_id = @user_id
    @cafe.save
    redirect_to cafe_path(@cafe)
  end

  def edit
    @cafe = Cafe.find(params[:id])
  end

  def update
    @cafe = Cafe.find(params[:id])
    @cafe.update(cafe_params)
    redirect_to cafe_path(@cafe)
  end

  def destroy
    @cafe = Cafe.find(params[:id])
    @cafe.destroy
    redirect_to cafes_path
  end

  def cafe_params
    params.require(:cafe).permit(:name, :address, :description, :user_id)
  end
end
