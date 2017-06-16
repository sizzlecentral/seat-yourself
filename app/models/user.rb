class User < ApplicationRecord

  has_secure_password

  validates :name, :email, :phone, presence: true

  has_many :owned_restaurants, class_name: "Restaurant"
  has_many :reservations
  has_many :restaurants, through: :reservations


end
