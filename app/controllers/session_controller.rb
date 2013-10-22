class SessionController < ApplicationController
	def new
		
	end

	def update
		
	end

	def destroy
		session[:user_id] = nil
		redirect_to login_url
	end
end