class PagesController < ApplicationController
  def home
  end

  def dashboard
    @user = current_user
    @orders = @user.orders.where(paid:true)
    @meal_names = []
    @orders.each do |o|
      o.order_items.each do |oi|
        @meal_names << oi.meal.name
      end
    end
    @meal_names = @meal_names.uniq
  end

end
