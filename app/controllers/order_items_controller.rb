class OrderItemsController < ApplicationController

  def new
    @order_item = OrderItem.new
    @meal = Meal.find(params[:meal_id])
    @order = Order.create(user: current_user, restaurant: @meal.restaurant)
  end

  def create
    @meal = Meal.find(params[:meal_id])
    @order_item = OrderItem.new(order_item_params)
    @order_item.meal = @meal
    @order = Order.create!(user: current_user, restaurant: @meal.restaurant)
    @order_item.order = @order
    if @order_item.save
      redirect_to meal_path(@meal), notice: 'Booking was successfully created!'
    else
      render :new
    end
  end

  private

  def order_item_params
    params.require(:order_item).permit(:quantity)
  end

end
