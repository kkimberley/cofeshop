class WelcomeController < ApplicationController

  before_action :authenticate_user!
  before_action :admin_required

  def about
  end
end
