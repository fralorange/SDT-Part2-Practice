class Ticket < ApplicationRecord
  has_many :user_tickets, dependent: :destroy
  has_many :users, through: :user_tickets

  validates :departure_date, presence: true
  validates :arrival_date, presence: true
  validates :origin, presence: true
  validates :destination, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }

  validate :departure_date_cannot_be_greater_than_arrival_date

  def departure_date_cannot_be_greater_than_arrival_date
    if departure_date.present? && arrival_date.present? && departure_date > arrival_date
      errors.add(:departure_date, "cannot be greater than arrival date")
    end
  end
end
