class UserDashboardController < ApplicationController
  def show
    @user = current_user #Might need to be scoped to user that ownes this dashboard
  end
end
