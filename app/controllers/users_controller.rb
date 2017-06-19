class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]

    if @user.save
      flash[:notice] = 'The user has been saved'
      redirect_to restaurants_path
    else
      render :new
    end
  end

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      flash[:alert] = "The user has been updated"
      redirect_to users_path(@user)
    else
      redirect_back_or_to users_path(@user)
    end
  end

  def destroy
    @user = current_user
    @user.destroy
    flash[:alert] = "The user has been deleted"
    redirect_to users_path
  end

  def user_params
    params.require(:user).permit(:name, :email, :phone)
  end

end
