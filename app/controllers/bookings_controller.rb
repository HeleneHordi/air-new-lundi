class BookingsController < ApplicationController
  # Uncomment this line if you want to use the before_action to set @flat
  # before_action :set_flat, only: [:new, :create]

  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new(booking_params) # Corrected from params_booking to booking_params
    @booking.user = current_user
    @booking.flat = @flat
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def index
    @bookings = Booking.all
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
