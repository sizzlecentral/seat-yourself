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
    slots.times.each do |slot|
      puts "slot"
    end
  end

end
