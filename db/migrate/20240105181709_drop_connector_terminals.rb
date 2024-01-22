class DropConnectorTerminals < ActiveRecord::Migration[7.0]
  def change
    drop_table :connector_terminals
  end
end
