class UserNavController < ApplicationController

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
