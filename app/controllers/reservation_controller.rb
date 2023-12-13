class ReservationController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    reserve = Reservation.new(spot_id: params[:spot_id], tourist_id: params[:tourist_id], people_count: params[:people_count], date: params[:date])
    if reserve.save
      redirect_to reservation_index_path
    else
      render 'new'
    end
  end

  def edit
  end

  def destroy
    reservation = Reservation.find(params[:id])
    reservation.destroy
    redirect_to tourist_show_path
  end
end
