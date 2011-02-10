class ReceiptsController < ApplicationController
  def show
    @bag = Bag.find params[:id]
    @booking = @bag.passenger.booking
    respond_to { |format| format.restkiosk }
  end
  
  def destroy
    @bag = Bag.find params[:id]
    @booking = @bag.passenger.booking
    @bag.destroy
    head :see_other, :location => checkin_belt_url(@booking)
  end
end
