class RevertLastRestaurantTable < ActiveRecord::Migration[5.1]
	def change
		remove_column :restaurants, :user_id, :integer
		# add_column :restaurants, :owner_id, :integer
	end
end
