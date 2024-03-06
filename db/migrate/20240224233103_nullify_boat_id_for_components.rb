class NullifyBoatIdForComponents < ActiveRecord::Migration[7.0]
  def change
    Component.where.not(boat_id: nil).update_all(boat_id: nil)
    remove_reference :components, :boat, index: true, foreign_key: true
  end
end
