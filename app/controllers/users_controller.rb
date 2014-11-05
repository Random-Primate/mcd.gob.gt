class UsersController < ApplicationController
  before_action :authenticate_user!
  #before_filter :get_user, :only => [:index,:new,:edit]
  #load_and_authorize_resource :only => [:show,:new,:destroy,:edit,:update]
  respond_to :html, :json

  #def update
  #  authorize! :assign_roles, @user if params[:user][:assign_roles]
  #end

  def index
    @users = User.paginate(:page => params[:page], :per_page => 10)
    #User.accessible_by(current_ability, :index)
  end

  def show
    @user = User.find(params[:id])
    render 'user_dashboard/show'
  end

  def edit_user
    @user = User.find(params[:id])
  end

  def update_user
    @user = User.update(params[:id], user_params)

    if @user.save
      flash[:notice] = 'Se lograron guardar sus cambios.'
    else
      flash[:alert] = 'Se han logrado guardar sus cambios.'
    end

    redirect_to action: 'index'
  end

  def new_user
    @user = User.new
  end

  def create_user
    @user = User.new(user_params)
    #@user.add_role params[:user][:role]

    if @user.save
      flash[:notice] = 'Se ha creado un nuevo usuario!'
    else
      flash[:notice] = 'No se ha logrado guardar el usuario.'
    end

    redirect_to action: 'index'
  end

  def destroy_user
    @user = User.find(params[:id])
    @user.destroy!
    redirect_to action: 'index'
  end

  private

  # Get roles accessible by the current user
  #----------------------------------------------------
  def accessible_roles
    @accessible_roles = Role.accessible_by(current_ability,:read)
  end

  # Make the current user object available to views
  #----------------------------------------
  def get_user
    @current_user = current_user
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :avatar, :email, :password,
                                 :password_confirmation)
  end

end
