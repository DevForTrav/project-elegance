class AddTerminalsToConnectors < ActiveRecord::Migration[7.0]
  def change
    add_reference :connectors, :terminal, null: true, foreign_key: { to_table: :terminals }
    add_reference :connectors, :secondary_terminal, null: false, foreign_key: { to_table: :terminals }
  end
end
