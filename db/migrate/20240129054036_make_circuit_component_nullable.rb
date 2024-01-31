class MakeCircuitComponentNullable < ActiveRecord::Migration[7.0]
  def change
    change_column_null :circuits, :component_id, true
  end
end
