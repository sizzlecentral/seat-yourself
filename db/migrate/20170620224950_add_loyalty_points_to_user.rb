class AddLoyaltyPointsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :loyalty_point, :integer , default: 0
  end
end
