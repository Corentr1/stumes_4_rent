class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.status = "pending"
    @costume = Costume.find(params[:costume_id])
    @booking.costume = @costume
    @booking.user = current_user
    if @booking.save
      redirect_to costume_path(@costume)
    else
      render 'costumes/show'
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    @booking.save
    redirect_to dashboard_path(current_user)
  end

  def cancel
    @booking = Booking.find(params[:id])
    @booking.status = "cancelled"
    @booking.save
    redirect_to dashboard_path(current_user)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path(current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date, :costume_id)
  end
end
