class ReservationsController < ApplicationController
  def index
    if session[:new_reservation_id]
      @new_reservation_id = session.delete(:new_reservation_id)
    end
    @reservations = Reservation.all
  end

  def new
    @tour_id = params[:tour_id]
    @tourist_id = params[:tourist_id].to_i
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      session[:new_reservation_id] = @reservation.id
      redirect_to reservations_path
    else
      Rails.logger.error(@reservation.errors.inspect)
      render 'new'
    end
  end
  
  def reservation_params
    params.require(:reservation).permit(:tourist_id, :tour_id, :guests, :date)
  end

  def edit
  end

  def destroy
    reservation = Reservation.find(params[:id])
    reservation.destroy
    redirect_to tourist_show_path
  end
  
  def record
    @reservation_record = Reservation.where(tourist_id: params[:tourist_id])
  end
end
