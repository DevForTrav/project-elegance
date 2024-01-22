class CreateWiringHarnesses < ActiveRecord::Migration[7.0]
  def change
    create_table :wiring_harnesses do |t|
      t.string :name
      t.references :boat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
