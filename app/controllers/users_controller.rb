class UsersController < ApplicationController

  def show 
    @ads = Ad.where(user: current_user) #display the ads of the current user
  end


end
