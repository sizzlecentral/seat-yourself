class Restaurant < ApplicationRecord

  # validates :name, :address, :price_range, :summary, :neighbourhood, :website, :menu_url, :opens_at, :closes_at, :capacity, presence: true
  # validates :opens_at, :closes_at, :price_range, :capacity, numericality: { only_integer: true }

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

  def time_slots
    (opens_at..(closes_at-1)).to_a
  end

  def capacity?(party_size)
    if current_capacity >= party_size
      return true
    else
      return false
    end
  end

  def current_capacity(date, time)
    total = 0
    reservations.where(date: date, time: time).each do |reservation|
      total += reservation.party_size
    end
    capacity - total
  end

end
