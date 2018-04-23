class CreateMeasurements < ActiveRecord::Migration[5.2]
  def change
    create_table :measurements do |t|
      t.float :F0
      t.float :F1
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
