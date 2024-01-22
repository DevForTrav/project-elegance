class AddNameToTerminal < ActiveRecord::Migration[7.0]
  def change
    add_column :terminals, :name, :string
  end
end
