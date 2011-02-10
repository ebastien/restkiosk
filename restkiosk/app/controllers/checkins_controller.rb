class CheckinsController < ApplicationController
  def show
    @booking = Booking.find params[:id]
    if @booking.seated?
      head :gone
    else
      respond_to { |format| format.restkiosk }
    end
  end
  
  def destroy
    @booking = Booking.find params[:id]
    if @booking.authenticated?
      @booking.passengers.each do |pax|
        unless pax.seat
          pax.seat = Seat.create
          pax.save
        end
      end
      respond_to { |format| format.restkiosk }
    else
      head :no_content
    end
  end
end
