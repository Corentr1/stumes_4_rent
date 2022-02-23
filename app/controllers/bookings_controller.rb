class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @costume = Costume.find(params[:costume_id])
    @booking = Booking.new
  end

  def create
    @bookming = Booking.new(bookmark_params)
    @list = List.find(params[:list_id])
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end


end
