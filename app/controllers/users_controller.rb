class UsersController < ApplicationController

  def show
    @ads = current_user.ads if current_user #display the ads of the current user
  end


end
