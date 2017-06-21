class Reservation < ApplicationRecord

  validates :date, :time, :party_size, presence: true
  validates :party_size, numericality: { greater_than: 0 }
  validate  :valid_date
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

  def valid_date
  validation = date.to_time
    if validation.past?
      errors.add(:restaurant_id, 'Reservation MUST be an Upcoming Date')
    else
    return true
  end
  end



end
