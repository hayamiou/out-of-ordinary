class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, :description, :price, :address, :places,  presence: true
end
