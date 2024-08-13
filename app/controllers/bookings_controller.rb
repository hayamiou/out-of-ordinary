class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @offer = Offer.find(params[:offer_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to root_path, notice: 'Booking was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date_start, :date_end, :number_of_persons, :total_prices)
  end
end
