class User < ApplicationRecord
  has_one_attached :photo
  has_many :bathrooms
  has_many :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Validations
  validates :email, presence: true, format: { with: /[a-z0-9]+@[a-z]+\.[a-z]{2,3}/ }
end
