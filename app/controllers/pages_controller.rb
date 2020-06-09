class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @orders = current_user.orders.where(paid: true)
    @new_meals = []

    @orders.each do |o|
      o.order_items.each do |oi|
        @new_meals << oi.meal
      end
    end

    @new_meals = @new_meals.uniq
  end
end
