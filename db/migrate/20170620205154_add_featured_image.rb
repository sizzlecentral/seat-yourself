class AddFeaturedImage < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :featured_image, :string
  end
end
