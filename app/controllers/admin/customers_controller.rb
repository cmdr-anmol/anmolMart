class Admin::CustomersController < ApplicationController
  before_action :authenticate_user!
  layout "admin"
#  layout false

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to admin_user_path(@user), notice: 'User updated successfully.'
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_users_path, notice: 'User deleted successfully.'
  end

  private

  def user_params
    params.require(:user).permit(:email, :isAdmin, :other_permitted_attributes)
  end
end
