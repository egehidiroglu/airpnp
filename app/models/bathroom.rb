class Bathroom < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :price, numericality: true, presence: true
  validates :location, presence: true

  enum availability: {
    unavailable: 0,
    available: 1
  }

  def host
    user
  end
end
