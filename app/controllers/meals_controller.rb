class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
    @order_item = OrderItem.new
  end

  def recipe
    @meal = Meal.find(params[:meal_id])
    @user = current_user
    @paid_orders = @user.orders.where(paid:true)
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
      # no access
    end

  end
end
