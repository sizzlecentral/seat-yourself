class UsersController < ApplicationController

	def index
		@user = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)

		@user.password = params[:user][:password]
		@user.password_confirmation = params[:user][:password_confirmation]

		if @user.save
			flash[:alert] = "The user has been saved"
			redirect_to restaurants_path
		else
			render :new
		end
	end

	def show
		@user = User.find(params[:id])
		@reservation = Reservation.new
		render :show
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			flash[:alert] = "The user has been updated"
			redirect_to @user
		else
			redirect_back_or_to @user
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		flash[:alert] = "The user has been deleted"
		redirect_to users_path
	end

	def user_params
		params.require(:user).permit(:name, :email, :phone)
	end

end
