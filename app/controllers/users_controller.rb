class UsersController < ApplicationController

  def myads
    @ads = current_user.ads if current_user #display the ads of the current user
  end
end
