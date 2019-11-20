class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(user: current_user)
  end


  def new
    @ad = Ad.find(params[:ad_id])
    @booking = Booking.new()

  end


  def create
    @booking = Booking.new
    @booking.status = "pending"
    @booking.user_id = current_user.id
    @booking.booking_start = params["booking"]["booking_start"]
    @booking.booking_end = params["booking"]["booking_end"]
    @booking.ad_id = params["ad_id"]
    @booking.save
    redirect_to bookings_path
  end


  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  def booking_params
      params.require(:booking).permit(:booking_start, :booking_end)
  end


end
