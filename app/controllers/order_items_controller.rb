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
      redirect_to order_path(@order), notice: 'Order was successfully added!'
    else
      render :new
    end
    @order.total_price = t_price(@order)
    @order.save
  end

  def edit
    @order = Order.find(params[:id])
    @order_item = OrderItem.find(params[:id])
  end

  def update
    @order_item = OrderItem.find(params[:id])
    @order = @order_item.order
    @order_item.update(order_item_params)
    redirect_to edit_order_path(@order)
  end

  def destroy
    @order_item = OrderItem.find(params[:id])
    @order = Order.find(@order_item.order_id)
    @order_item.destroy
    redirect_to order_path(@order.id), notice: 'Meal has been removed from shopping cart'
  end


  private

  def order_item_params
    params.require(:order_item).permit(:quantity)
  end

  def t_price(order)
    total = 0
    order.order_items.each do |oi|
      total += Meal.find(oi.meal_id).price * oi.quantity
    end
    total
  end
end
