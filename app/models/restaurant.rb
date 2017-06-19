class Restaurant < ApplicationRecord

  belongs_to :owner, class_name: "User", optional: true
  has_many :reservations
  has_many :users, through: :reservations

  def open(time)
    if opens_at < time && closes_at > time
      return true
    else
      return false
    end
  end

  def slots
    slots = closes_at - opens_at
  end

  def capacity?(party_size)
    if current_capacity >= party_size
      return true
    else
      return false
    end
  end

  def current_capacity
    total = 0
    reservations.each do |reservation|
      total += reservation.party_size
    end
    capacity - total
  end

end
