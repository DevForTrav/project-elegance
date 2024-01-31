class MakeSpliceComponentNullable < ActiveRecord::Migration[7.0]
  def change
    change_column_null :splices, :component_id, true
  end
end
