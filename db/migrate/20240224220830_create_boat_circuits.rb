class CreateBoatCircuits < ActiveRecord::Migration[7.0]
  def change
    create_table :boat_circuits do |t|
      t.references :boat, null: false, foreign_key: true
      t.references :circuit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
