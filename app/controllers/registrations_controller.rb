class RegistrationsController < Devise::RegistrationsController

  private

  # Strong parameters access for Devise's create method
  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :avatar, :email, :password,
                                 :password_confirmation)
  end

  # Strong parameters access for Devise's update method
  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :avatar, :email, :password,
                                 :password_confirmation, :current_password)
  end
end
