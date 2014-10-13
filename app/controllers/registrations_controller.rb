class RegistrationsController < Devise::RegistrationsController
  def new
    super
    @random_string = (0...8).map { (65 + rand(26)).chr }.join
  end

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :avatar, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :avatar, :email, :password, :password_confirmation, :current_password)
  end
end
