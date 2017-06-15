class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :price_range
      t.text :summary
      t.string :neighbourhood
      t.string :website
      t.string :menu_url
      t.integer :capacity
      t.integer :opens_at
      t.integer :closes_at

      t.timestamps
    end
  end
end
