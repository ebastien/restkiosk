class IdentitiesController < ApplicationController
  def show
    @booking = Booking.find params[:checkin_id]
    respond_to { |format| format.restkiosk }
  end
  
  def update
    @booking = Booking.find params[:checkin_id]
    params[:identities][:identity].each do |identity|
      pax = @booking.passengers.find_by_name identity[:name]
      unless pax.nil?
        pax.authenticated = true
        pax.save
      end
    end
    respond_to { |format| format.restkiosk { render :action => :show } }
  end
end
