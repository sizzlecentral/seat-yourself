class Reservation < ApplicationRecord

  validates :date, :time, :party_size, presence: true
  validate :has_capacity

  belongs_to :user
  belongs_to :restaurant

  def has_capacity
    if restaurant.current_capacity(date, time) >= party_size
      return true
    else
      errors.add(:restaurant_id, 'Sorry, the restaurant is over capacity at this time')
    end
  end

end
