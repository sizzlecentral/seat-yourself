class ChangePartySizeDefault < ActiveRecord::Migration[5.1]
  def change
    change_column :reservations, :party_size, :integer, default: 0
  end
end
