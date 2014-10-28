class UsersController < ApplicationController
  before_action :authenticate_user!

  #def update
  #  authorize! :assign_roles, @user if params[:user][:assign_roles]
  #end

  def index
    @users = User.all.paginate(:page => params[:page], :per_page => 10)
  end

  def show
    @user = User.find(params[:id])
    render 'user_dashboard/show'
  end

  #private

  #def user_params
  #  params.require(:user).permit(:first_name, :last_name)
  #end

end
