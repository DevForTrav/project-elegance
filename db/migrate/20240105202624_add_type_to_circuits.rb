class AddTypeToCircuits < ActiveRecord::Migration[7.0]
  def change
    add_column :circuits, :type, :string
  end
end
