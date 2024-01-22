class CreateWires < ActiveRecord::Migration[7.0]
  def change
    create_table :wires do |t|
      t.string :primary_color
      t.string :secondary_color
      t.string :gauge
      t.integer :quantity

      t.timestamps
    end
  end
end
