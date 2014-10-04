class UserController < ApplicationController
  #def update
  #  authorize! :assign_roles, @user if params[:user][:assign_roles]
  #end

  private

    def user_params
      params.require(:user).permit(:roles_mask)
    end

end
