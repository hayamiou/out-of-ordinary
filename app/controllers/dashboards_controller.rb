class DashboardsController < ApplicationController
  def offers
    @my_offers = current_user.bookings
  end

  def bookings
    @my_bookings = current_user.bookings
  end
end
