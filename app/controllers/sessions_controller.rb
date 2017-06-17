class SessionsController < ApplicationController
	def new
	end

	def create
		u = User.find_by(email: params[:session][:email])

		if u && u.authenticate(params[:session][:email])
			flash[:notice] = 'Successfully logged in'
			redirect_to '/restaurants/'
		else
			flash.now[:alert] = 'Try Again'
			render :new
		end
	end

	def destroy
	end
end
