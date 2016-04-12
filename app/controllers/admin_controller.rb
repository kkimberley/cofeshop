class AdminController < ApplicationController
  layout "admin"

  before_action :authenticate_user!
  before_action :admin_required
  before_action :set_page_info

  def set_page_info
    @page = "admin"
  end
end
