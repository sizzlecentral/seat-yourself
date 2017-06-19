class User < ApplicationRecord

  has_secure_password

  validates :name, :email, :phone, presence: true
  # validates :phone, length { is: 10 }
  # validates :phone, format: {/\A\.*\d{3}\.*\d{3}\.*\d{4}\z/}
  has_many :owned_restaurants, class_name: "Restaurant", foreign_key: "owner_id"
  has_many :reservations
  has_many :restaurants, through: :reservations


end
