class Bathroom < ApplicationRecord
  has_one_attached :photo

  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :price, presence: true
  validates :location, presence: true

  enum availability: {
    unavailable: 0,
    available: 1
  }

  def host
    user
  end
end
