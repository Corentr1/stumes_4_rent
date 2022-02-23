class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @costume = Costume.find(params[:costume_id])
    @booking.costume = @costume
    @booking.user = current_user
    if @booking.save
      redirect_to costume_path(@costume)
    else
      render 'costumes/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date, :costume_id)
  end

end
