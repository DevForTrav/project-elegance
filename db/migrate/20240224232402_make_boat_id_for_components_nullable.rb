class MakeBoatIdForComponentsNullable < ActiveRecord::Migration[7.0]
  def change
    change_column_null :components, :boat_id, true
  end
end
