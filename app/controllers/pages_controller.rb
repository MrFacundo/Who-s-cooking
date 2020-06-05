class PagesController < ApplicationController
 skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard

    orders = current_user.orders.where(paid:true) #TO DO: where order.reviews = nil
    @new_meals = []
    @cookbook_meals = []
    @new_meals = @new_meals.uniq

    orders.each do |o|
      o.order_items.each do |oi|
        if oi.order.review.nil?
          @new_meals << oi.meal
        else
          @cookbook_meals << oi.meal
        end
      end
    end

    @cookbook_meals  = @cookbook_meals.uniq if !nil

  end

end
