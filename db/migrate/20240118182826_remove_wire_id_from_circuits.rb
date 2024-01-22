class RemoveWireIdFromCircuits < ActiveRecord::Migration[7.0]
  def change
    remove_column :circuits, :wire_id, :references
    add_column :circuits, :primary_color, :string
    add_column :circuits, :secondary_color, :string
  end
end
