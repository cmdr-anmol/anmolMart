class Admin::DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin
  layout "admin"

  def index
    # Your dashboard code
  end

  private

  def check_admin
    unless current_user&.admin?
      flash[:alert] = "You are not authorized to access this page."
      redirect_to(root_path)
    end
  end
end
