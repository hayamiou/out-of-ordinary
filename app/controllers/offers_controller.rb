class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]
  def index
    @offers = Offer.all

    @markers = @offers.geocoded.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude
      }
    end
  end

  def show
    @offer = Offer.find(params[:id])
    @markers = [
      {
        lat: @offer.latitude,
        lng: @offer.longitude
      }
    ]
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to offers_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :price, :address, :places)
  end
end
