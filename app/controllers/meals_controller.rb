class MealsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    
  end

  def show
    @meal = Meal.find(params[:id])
    @order_item = OrderItem.new
  end

  def recipe
    @meal = Meal.find(params[:meal_id])
    @paid_orders = current_user.orders.where(paid:true)
    @paid_meals = []
    @paid_orders.each do |o|
      o.order_items.each do |oi|
        @paid_meals << oi.meal
      end
    end

    if @paid_meals.include? @meal
      @recipe = @meal
      render "shared/_recipe"
    else
      # no access partial or flash
    end
  end

  private

  def city_search
    @meals = @meals.restaurant.where(city: params[:city])
  end

end
