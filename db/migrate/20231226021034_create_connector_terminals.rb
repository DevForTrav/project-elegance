class CreateConnectorTerminals < ActiveRecord::Migration[7.0]
  def change
    create_table :connector_terminals do |t|
      t.references :terminal, null: false, foreign_key: true
      t.references :connector, null: false, foreign_key: true

      t.timestamps
    end
  end
end
