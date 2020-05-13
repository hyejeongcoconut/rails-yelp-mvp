class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
    @restaurant.save
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update
  end

  def edit
  end

  def create
    @restaurant = Restaurant.new

  end

  private

  def restaurant_params
  params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end



end
