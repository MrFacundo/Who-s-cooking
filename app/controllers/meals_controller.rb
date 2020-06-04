class MealsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @meals = Meal.all
    @order_item = OrderItem.new
  end

  def show
    @meal = Meal.find(params[:id])
    @order_item = OrderItem.new
  end
end
