class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @bathroom = Bathroom.find(params[:bathroom_id])
    @booking = Booking.new
  end

  def create
    @bathroom = Bathroom.find(params[:bathroom_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.bathroom = @bathroom
    @booking.status = 0
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def set_status
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.status = params[:booking][:status]
    @booking.save
    redirect_to
  end

  def host_bookings
    @bookings = Booking.where(user: current_user)
  end

  def host_bookings_show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date_time, :end_date_time, :status)
  end
end
