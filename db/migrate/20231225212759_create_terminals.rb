class CreateTerminals < ActiveRecord::Migration[7.0]
  def change
    create_table :terminals do |t|
      t.string :part_number
      t.string :type
      t.integer :wire_gauge_min
      t.integer :wire_gauge_max
      t.string :material
      t.string :description

      t.timestamps
    end
  end
end
