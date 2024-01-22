class RenameComponentName < ActiveRecord::Migration[7.0]
  def change
    rename_column :components, :name, :label
  end
end
