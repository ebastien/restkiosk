class BeltsController < ApplicationController
  def show
    @booking = Booking.find params[:checkin_id]
    @weight = @booking.passengers.first.bags.inject(0) { |weight, bag| weight + bag.weight }
    respond_to { |format| format.restkiosk }
  end
  
  def create
    @booking = Booking.find params[:checkin_id]
    @bag = Bag.create :weight => params[:bag][:weight], :passenger => @booking.passengers.first
    head :created, :location => receipt_url(@bag)
  end
end
