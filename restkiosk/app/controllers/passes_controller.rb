class PassesController < ApplicationController
  def show
    @passenger = Passenger.find params[:id]
    respond_to { |format| format.restkiosk }
  end
end
