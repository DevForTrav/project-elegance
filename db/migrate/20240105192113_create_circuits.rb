class CreateCircuits < ActiveRecord::Migration[7.0]
  def change
    create_table :circuits do |t|
      t.string :label
      t.string :gauge
      t.integer :length
      t.references :wire, null: false, foreign_key: true
      t.references :wiring_harness, null: false, foreign_key: true
      t.references :p1_terminal, null: false, foreign_key: true, foreign_key: { to_table: :terminals }
      t.references :p2_terminal, null: false, foreign_key: true, foreign_key: { to_table: :terminals }
      t.references :p1_connector, null: false, foreign_key: true, foreign_key: { to_table: :wiring_harness_connectors }
      t.references :p2_connector, null: false, foreign_key: true, foreign_key: { to_table: :wiring_harness_connectors }
      t.references :twisted_with, null: true, foreign_key: { to_table: :circuits}

      t.timestamps
    end
  end
end
