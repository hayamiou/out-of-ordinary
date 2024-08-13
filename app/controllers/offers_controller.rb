class OffersController < ApplicationController
  before_action :set_offer, only: %i[show]

  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find(params[:id])
  end
end
