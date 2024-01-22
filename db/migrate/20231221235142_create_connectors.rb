class CreateConnectors < ActiveRecord::Migration[7.0]
  def change
    create_table :connectors do |t|
      t.string :name
      t.string :part_number
      t.integer :contacts
      t.string :manufacturer

      t.timestamps
    end
  end
end
