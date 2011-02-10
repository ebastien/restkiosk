class KiosksController < ApplicationController
  def show
    respond_to { |format| format.restkiosk }
  end
  
  def create
    @booking = Booking.find params[:booking][:id]
    head :created, :location => checkin_url(@booking)
  end
end
