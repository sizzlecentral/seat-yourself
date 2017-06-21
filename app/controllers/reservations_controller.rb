class ReservationsController < ApplicationController

  def index
    @restaurant = Restaurant.find(params[:restaurant_id])

  end

  def create

    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = @restaurant.reservations.new(reservation_params)
    @reservation.user = current_user


            if @reservation.save
              current_user.increment!(:loyalty_point, 5)
              flash[:alert] = "The reservation has been saved."
              redirect_to restaurant_path(@restaurant)
              return
            end

      flash[:alert] = "Invalid Reservation Please Try Again"
      render  "restaurants/show"
  
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
    if @reservation.date >= Date.today
      current_user.increment!(:loyalty_point, -5)
    end
    flash[:alert] = "The reservation has been deleted"
    render 'restaurants/show'
  end

  def reservation_params
    params.require(:reservation).permit(:date, :time, :party_size)
  end

end
