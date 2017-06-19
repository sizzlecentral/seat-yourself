class ChangeTime < ActiveRecord::Migration[5.1]
  def up
    change_column :reservations, :time, :integer
  end

  def down
    change_column :reservations, :time, :time 
  end

end
