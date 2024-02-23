class AddCircuitPositionToSplice < ActiveRecord::Migration[7.0]
  def change
    add_column :splices, :circuit_position, :string
  end
end
