class AddColumnsToCircuits < ActiveRecord::Migration[7.0]
  def change
    add_column :circuits, :circuit_position, :string
    add_column :circuits, :p1_position, :string
    add_column :circuits, :p2_position, :string
  end
end
