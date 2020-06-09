class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @restaurants = Restaurant.all
    @order_item = OrderItem.new
    @meals = Meal.all
    @categories = Category.all

    if params[:city].present?
      city_search
      @meals = @meals.joins(:restaurant).where(restaurants: {city: params[:city]}) 
    end

    if params[:cuisine].present?
      cuisine_search
      meal_cusine_search(params[:cuisine])
    end

    if params[:category] != [""]
      @meals = @meals.joins(:meal_categories).where(meal_categories: { category_id: params[:category] })
    end

    if params[:preptime].present?
      @meals = @meals.where("prep_time <= ?", params[:preptime])
    end

    if params[:difficulty].present?
      @meals = @meals.where("difficulty <= ? ", params[:difficulty])
    end

    if params[:menu_type].present?
      @meals = @meals.where("menu_type <= ?", params[:menu_type])
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

  def meal_cusine_search(query)
    @meals = Meal.joins(:restaurant).where(restaurants: {cuisine: query})
  end
end
