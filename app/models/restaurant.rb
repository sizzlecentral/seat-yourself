class Restaurant < ApplicationRecord

  belongs_to  :owner, class_name: "User", optional: true
  has_many :reservations
  has_many :users, through: :reservations

  def self.open(time)
    @open = Restaurant.where("opens_at < ?", time).where("closes_at > ?", time)
  end

end
