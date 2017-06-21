class RemovePartySizeDefault < ActiveRecord::Migration[5.1]
  def change
    change_column :reservations, :party_size, :integer

  end
end
