class CreateWiringHarnessConnectors < ActiveRecord::Migration[7.0]
  def change
    create_table :wiring_harness_connectors do |t|
      t.string :label
      t.integer :populated_contacts
      t.references :wiring_harness, null: false, foreign_key: true
      t.references :connector, null: false, foreign_key: true

      t.timestamps
    end
  end
end
