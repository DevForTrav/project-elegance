class CreateBoatWiringHarnesses < ActiveRecord::Migration[7.0]
  def change
    create_table :boat_wiring_harnesses do |t|
      t.references :boat, null: false, foreign_key: true
      t.references :wiring_harness, null: false, foreign_key: true

      t.timestamps
    end
  end
end
