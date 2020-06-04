class PagesController < ApplicationController
  def home
  end

  def dashboard
    @user = current_user
    @orders = @user.orders.where(paid:true)
    @meals = []
    @orders.each do |o|
      o.order_items.each do |oi|
        @meals << oi.meal
      end
    end
    @meals = @meals.uniq
  end

end
