class UserNavController < ApplicationController
  before_action :authenticate_user!
  #Activate User's Custom Navigation
  def activate
    if current_user.admin?
      @user_nav = 'active'
    else
      @user_nav = 'inactive'
    end
  end

  def active?

  end
end
