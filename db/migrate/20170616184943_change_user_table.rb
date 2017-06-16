class ChangeUserTable < ActiveRecord::Migration[5.1]
  def change
    change_table :restaurants do |t|
      t.integer :owner_id
    end
  end
end
