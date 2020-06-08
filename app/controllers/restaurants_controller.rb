class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @restaurants = Restaurant.all
    @order_item = OrderItem.new

    if params[:city].present?
      city_search
      meal_city_search(params[:city])
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

  def meal_city_search(query)
    @meals = Meal.joins(:restaurant).where(restaurants: {city: query})
  end

  def city_search
    @restaurants = @restaurants.where(city: params[:city])
  end

  def cuisine_search
    @restaurants = @restaurants.where(cuisine: params[:cuisine])
  end
end
