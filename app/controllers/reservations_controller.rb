class ReservationsController < ApplicationController

  def index
    @restaurant = Restaurant.find(params[:restaurant_id])

  end

  def create

    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = @restaurant.reservations.new(reservation_params)
    @reservation.user = current_user

    unless @reservation.has_capacity
      flash[:alert] = "Time is unavailable please select another time"
      render 'restaurants/show'
    end

    if @reservation.save
      flash[:alert] = "The reservation has been saved."
      redirect_to restaurant_path(@restaurant)
    else
      render 'restaurants/show'
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = Reservation.find(params[:id])
  end

  def update
  @restaurant = Restaurant.find(params[:restaurant_id])
  @reservation = Reservation.find(params[:id])
    if @reservation.update(reservation_params)
      flash[:alert] = "The reservation has been updated"
      redirect_to users_path(current_user)
    else
      render 'restaurants/show'
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    flash[:alert] = "The reservation has been deleted"
    render 'restaurants/show'
  end

  def reservation_params
    params.require(:reservation).permit(:date, :time, :party_size)
  end

end
