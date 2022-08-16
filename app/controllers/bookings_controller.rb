class BookingsController < ApplicationController
  before_action :set_bathroom

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @bathroom = set_bathroom
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.bathroom = @bathroom
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_bathroom
    @bathroom = Bathroom.find(params[:bathroom_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date_time, :end_date_time, :status)
  end
end
