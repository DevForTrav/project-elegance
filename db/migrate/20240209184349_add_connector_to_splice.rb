class AddConnectorToSplice < ActiveRecord::Migration[7.0]
  def change
    add_reference :splices, :wiring_harness_connector, null: true, foreign_key: true
  end
end
