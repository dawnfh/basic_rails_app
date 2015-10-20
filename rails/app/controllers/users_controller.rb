class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save 
  		redirect_to root_url, :notice => "Your account is active!"
  	else
  		render "new"
  	end
  end
# giving rails permission for users to create these fields whitelist (ok the actions)
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
