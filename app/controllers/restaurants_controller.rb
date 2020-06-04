class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  def index
    if params[:city] == ""
      @restaurants = Restaurant.all
    else
      @restaurants = Restaurant.where(city: params[:city])
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @order_item = OrderItem.new
  end
end
