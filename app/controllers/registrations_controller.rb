class RegistrationsController < Devise::RegistrationsController
  def new
    super
    @random_string = (0...8).map { (65 + rand(26)).chr }.join
  end

  # This method has been stolen from Devise
  # PUT /resource
  # We need to use a copy of the resource because we don't want to change
  # the current user in place.
  #def update
  #  self.resource = resource_class.to_adapter.get!(send(:"current_#{resource_name}").to_key)
  #  prev_unconfirmed_email = resource.unconfirmed_email if resource.respond_to?(:unconfirmed_email)

  #  resource_updated = update_resource(resource, account_update_params)
  #  yield resource if block_given?
  #  if resource_updated
  #    if is_flashing_format?
  #      flash_key = update_needs_confirmation?(resource, prev_unconfirmed_email) ?
  #          :update_needs_confirmation : :updated
  #      set_flash_message :notice, flash_key
  #    end
  #    sign_in resource_name, resource, bypass: true
  #    respond_with resource, location: after_update_path_for(resource)
  #  else
  #    clean_up_passwords resource
  #    respond_with resource
  #  end
  #end


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
