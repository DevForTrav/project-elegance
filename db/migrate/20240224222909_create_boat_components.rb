class CreateBoatComponents < ActiveRecord::Migration[7.0]
  def change
    create_table :boat_components do |t|
      t.references :boat, null: false, foreign_key: true
      t.references :component, null: false, foreign_key: true

      t.timestamps
    end
  end
end
