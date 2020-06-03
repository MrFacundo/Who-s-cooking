class OrderItemsController < ApplicationController

  def new
    @order_item = OrderItem.new
    @meal = Meal.find(params[:meal_id])
    if current_user.orders.where(paid: false).first
      @order = current_user.orders.where(paid: false).first
    else
      @order = Order.create(user: current_user, restaurant: @meal.restaurant)
    end
  end

  def create
    @meal = Meal.find(params[:meal_id])
    @order_item = OrderItem.new(order_item_params)
    @order_item.meal = @meal
    if current_user.orders.where(paid: false).first
      @order = current_user.orders.where(paid: false).first
    else
      @order = Order.create!(user: current_user, restaurant: @meal.restaurant)
    end
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
