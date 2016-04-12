class Account::OrdersController < ApplicationController
  before_action :authenticate_user!
  layout 'product', :only => [:index]

  def index
    @orders = current_user.orders.order("id DESC")
    @page = "admin"
  end
end
