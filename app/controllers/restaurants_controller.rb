class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @restaurants = Restaurant.all

    if params[:city].present?
      city_search
    end

    if params[:cuisine].present?
      cuisine_search
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @order_item = OrderItem.new
  end

  private

  def city_search
    @restaurants = @restaurants.where(city: params[:city])
  end

  def cuisine_search
    @restaurants = @restaurants.where(cuisine: params[:cuisine])
  end
end
