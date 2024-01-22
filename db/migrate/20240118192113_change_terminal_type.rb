class ChangeTerminalType < ActiveRecord::Migration[7.0]
  def change
    remove_column :terminals, :type, :string
    add_column :terminals, :gender, :integer
  end
end
