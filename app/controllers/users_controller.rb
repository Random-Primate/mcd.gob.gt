class UsersController < ApplicationController
  before_action :authenticate_user!
  #before_filter :get_user, :only => [:index,:new,:edit]
  load_and_authorize_resource# :only => [:show,:new,:destroy,:edit,:update]
  respond_to :html, :json

  #def update
  #  authorize! :assign_roles, @user if params[:user][:assign_roles]
  #end

  def index
    @users = User.accessible_by(current_ability, :read).order(:last_name).paginate(page: params[:page], per_page: 10)
  end

  def show
    @user = User.find(params[:id])
    render 'user_dashboard/show'
  end

  def edit_user
    @user = User.find(params[:id])
    #@rol = @user.roles.first
  end

  def update_user
    @user = User.update(params[:id], user_params)

    set_roles_form

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

    set_roles_form

    if @user.save
      flash[:notice] = 'Se ha creado un nuevo usuario!'
      redirect_to action: 'index'
    else
      flash[:notice] = 'No se ha logrado guardar el usuario.'
      render :new_user
    end
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

  # Set Role modification
  #----------------------------------------
  def set_roles_form
    if params[:admin] == '1'
      @user.grant(:admin)
    elsif params[:admin] == '0'
      @user.remove_role(:admin)
    end

    if params[:supervisor] == '1'
      @user.grant(:supervisor)
    elsif params[:supervisor] == '0'
      @user.remove_role(:supervisor)
    end

    if params[:implementacion] == '1'
      @user.grant(:implementacion)
    elsif params[:implementacion] == '0'
      @user.remove_role(:implementacion)
    end

    if params[:ventanilla] == '1'
      @user.grant(:ventanilla)
    elsif params[:ventanilla] == '0'
      @user.remove_role(:ventanilla)
    end

    if params[:usuario] == '1'
      @user.grant(:usuario)
    elsif params[:usuario] == '0'
      @user.remove_role(:usuario)
    end
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :avatar, :email, :role, :password,
                                 :password_confirmation, :admin, :supervisor, :implementacion,
                                 :ventanilla, :usuario)
  end

end
