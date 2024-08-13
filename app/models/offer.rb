class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, :description, :price, :address, :places, presence: true

  def next
    Offer.where("id > ?", id).order(:id).first
  end

  def prev
    Offer.where("id < ?", id).order(:id).last
  end
end
