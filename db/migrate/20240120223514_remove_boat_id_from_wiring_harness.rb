class RemoveBoatIdFromWiringHarness < ActiveRecord::Migration[7.0]
  def change
    remove_column :wiring_harnesses, :boat_id
  end
end
