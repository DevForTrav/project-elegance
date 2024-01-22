class ChangeCircuitTypeName < ActiveRecord::Migration[7.0]
  def change
    rename_column :circuits, :type, :kind
  end
end
