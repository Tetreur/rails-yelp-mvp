class RestaurantsController < ApplicationController

  # efore_action :set_restaurants

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  # def set_restaurants
  #   @restaurants = Restaurant.find(params[:id])
  # end

  def restaurant_params
    params.require(:restaurant).permit(:name, :category, :address, :phone_number)
  end
end
