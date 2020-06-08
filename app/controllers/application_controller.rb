class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_counter
  before_action :current_order
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end

  private

  def set_counter
    if current_user
      @order_items_count = 0
      @order = current_user.orders.where(paid: false).first
      if @order
        @order_items_count = @order.order_items.count
      end
    end
  end

  def current_order
    if current_user
      @order = current_user.orders.where(paid: false).first
    end
  end

end
