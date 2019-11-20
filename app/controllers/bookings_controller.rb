class BookingsController < ApplicationController

  def index
    @outgoing_bookings = Booking.where(user: current_user)
    incoming_bookings


  end

   def confirm
    @booking = Booking.find(params[:id])
     @booking.status = "confirmed"
     @booking.save
     redirect_to booking_path(@booking)
   end


   def decline
    @booking = Booking.find(params[:id])
     @booking.status = "decline"
     @booking.save
     redirect_to booking_path(@booking)
   end

  def show
    #incoming_bookings

    @booking = Booking.find(params[:id])

end

def incoming_bookings
  #on prend les ads ou le user cest nous
  @ads = Ad.where(user: current_user)
  #new arrey
  @incoming_bookings = []
  # pour chaque add
  @ads.each do |ad|
    #pour chaque booking de add, on le met dans le arrey incoming_bookings
    ad.bookings.each { |booking| @incoming_bookings << booking }
  end
  @incoming_bookings
  #on prend tout les bookings avec le statue pending du arrey incoming_bookings
  #@pending_bookings = @incoming_bookings.select do |booking|
  #  booking.status == "pending"
  #end
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
