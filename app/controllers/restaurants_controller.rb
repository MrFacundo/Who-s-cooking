class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
end
