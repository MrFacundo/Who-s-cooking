class ApplicationController < ActionController::Base
  before_action :set_counter
  before_action :current_order
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end

  private

  def set_counter
    @order_items_count = OrderItem.count
  end

  def current_order
    @order = current_user.orders.where(paid: false).first
  end

end
