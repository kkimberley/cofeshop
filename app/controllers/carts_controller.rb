class CartsController < ApplicationController
  before_action :authenticate_user!, only: [:checkout]
  layout 'product'
  def checkout
    @order = current_user.orders.build
    @info = @order.build_info
  end

  def clean
    current_cart.clean!
    flash[:warning] = "已清空購物車"
    redirect_to carts_path
  end

  def index
    @page = "cart"
  end
end
