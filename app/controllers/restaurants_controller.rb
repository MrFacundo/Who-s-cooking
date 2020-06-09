class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @restaurants = Restaurant.all
    @order_item = OrderItem.new
    @meals = Meal.joins(:restaurant)

    if params[:city].present?
      city_search
      @meals = Meal.joins(:restaurant).where(restaurants: {city: params[:city]})
    end

    if params[:cuisine].present?
      cuisine_search
      meal_cusine_search(params[:cuisine])
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @order_item = OrderItem.new
  end

  private

  # def meal_city_search(query)
  #   @meals = Meal.joins(:restaurant).where(restaurants: {city: query})
  # end

  def reviews
    @restaurants = Restaurant.all
    @reviews = @restaurants.each do |restaurant|
      restaurant.reviews
    end
  end

  def city_search
    @restaurants = @restaurants.where(city: params[:city])
  end

  def cuisine_search
    @restaurants = @restaurants.where(cuisine: params[:cuisine])
  end

  def meal_cusine_search(query)
    @meals = Meal.joins(:restaurant).where(restaurants: {cuisine: query})
  end
end
