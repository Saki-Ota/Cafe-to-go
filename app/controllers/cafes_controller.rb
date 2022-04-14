class CafesController < ApplicationController

  def index
    @cafes = Cafe.all
  end

  def show
    @cafe = Cafe.find(params[:id])
  end

  def new
    @cafe = Cafe.new
  end

  def create
    @cafe = Cafe.new(cafe_params)
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
