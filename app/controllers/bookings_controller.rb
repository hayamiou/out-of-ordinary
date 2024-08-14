class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @offer = Offer.find(params[:offer_id])
  end

  def create

    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new(booking_params)

    days = (@booking.date_end - @booking.date_start).to_i
    @booking.total_price = @booking.number_of_persons * days * @offer.price

    if @booking.save
      redirect_to root_path, notice: 'Booking was successfully created.'
    else
      raise
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:number_of_persons, :date_start, :date_end)
  end
end
