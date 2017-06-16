class Reservation < ApplicationRecord

  validates :date, :time, :party_size, presence: true

  belongs_to :user
  belongs_to :restaurant

end
