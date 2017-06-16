class User < ApplicationRecord
  has_many :owned_restaurants, class_name: "Restaurant"
  has_many :reservations
  has_many :restaurants, through: :reservations

end
