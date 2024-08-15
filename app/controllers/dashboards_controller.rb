class DashboardsController < ApplicationController
  def my_bookings
    @my_bookings = current_user.bookings
  end

  def offers
    @my_offers = current_user.offers
  end
end
