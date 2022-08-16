class User < ApplicationRecord
  has_many :bathrooms
  has_many :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true, format: { with: /\A[a-zA-Z]+\z/ }
  validates :last_name, presence: true, format: { with: /\A[a-zA-Z]+\z/ }
  # validates :email, presence: true, format: { with: /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/ }
end
