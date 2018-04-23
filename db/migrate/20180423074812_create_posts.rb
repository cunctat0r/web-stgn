class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :line_name
      t.string :num_tower
      t.string :net_region

      t.timestamps
    end
  end
end
