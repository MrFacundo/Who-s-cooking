class OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    if @order.save
      @order.paid = true
      @order.save
      redirect_to order_path(@order), notice: 'Order was successfully updated.'
    else
      render :update
    end
  end

  private

  def order_params
    params.require(:order).permit(:delivery_time, :delivery_address)
  end

end
