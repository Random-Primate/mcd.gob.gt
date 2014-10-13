class UserDashboardController < ApplicationController
  def show
    @user = current_user #Might need to be scoped to user that ownes this dashboard
    #users has one dashboard!!!! but not a model huh?
  end
end
