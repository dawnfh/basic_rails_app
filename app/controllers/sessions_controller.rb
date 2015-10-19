class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.authenticate(params[:email], params[:password])
		if user
			sesson[:user_id] = user.user_id
			redirect_to root_url, :notice => "Logged In"
		else
			flash.now.alert = "Invalid email or password"
			render "new"
		end
	end
end
