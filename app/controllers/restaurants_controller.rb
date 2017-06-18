class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    # NOT sure if this is right??? - TEMP CHANGED TO WORK
    @restaurant.owner_id = 1
    # session[:user_id]

    if @restaurant.save
      flash[:alert] = "The restaurant has been saved"
      # Why do we render instead of redirect to show?
      redirect_to user_path(@restaurant.owner_id)

    else
      render :new
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reservation = Reservation.new
    render :show
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(restaurant_params)
      flash[:alert] = "The restaurant has been updated"
      redirect_to users_path(session[:user_id])
    else
      redirect_back_or_to @restaurant
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    flash[:alert] = "The restaurant has been deleted"
    redirect_to restaurants_path
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :price_range, :summary, :neighbourhood, :website, :menu_url, :capacity, :opens_at, :closes_at)
  end

end
