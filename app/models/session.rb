class Session < ApplicationRecord

  validates :email, :passord, presence: true

end
