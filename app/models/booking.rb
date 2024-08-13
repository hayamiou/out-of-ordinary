class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer
  validates :date_start, presence: true
  validates :date_end, presence: true
  validates :number_of_persons, presence: true
  validates :total_prices, presence: true
end
