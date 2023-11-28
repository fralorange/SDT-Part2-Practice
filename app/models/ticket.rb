class Ticket < ApplicationRecord
  belongs_to :user

  validates :departure_date, presence: true
  validates :arrival_date, presence: true
  validates :origin, presence: true
  validates :destination, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
end
