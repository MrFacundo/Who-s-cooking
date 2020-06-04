class RestaurantsController < ApplicationController
  def index
    if params[:city] == ""
      @restaurants = Restaurant.all
    else
      @restaurants = Restaurant.where(city: params[:city])
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
end
