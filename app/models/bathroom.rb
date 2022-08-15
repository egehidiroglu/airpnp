class Bathroom < ApplicationRecord
  belongs_to :user
  validates :price, :location, presence: true

  enum status: {
    unavailable: 0,
    available: 1
  }
end
