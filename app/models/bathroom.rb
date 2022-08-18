
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

  # --------PG Search - Nice to have ---------
  # include PgSearch::Model
  # pg_search_scope :search_by_description_and_location,
  # against: [ :description, :location ],
  # using: {
  #   tsearch: { prefix: true }
  # }
end
