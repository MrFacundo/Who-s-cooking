class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @order = Order.find(params[:order_id])
  end

  def create
    @order = Order.find(params[:order_id])
    @review = Review.new(review_params)
    @review.order = @order
    if @review.save
      redirect_to orders_path
    else
      render :new
    end
  end


  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
