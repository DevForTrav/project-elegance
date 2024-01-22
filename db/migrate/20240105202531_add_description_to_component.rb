class AddDescriptionToComponent < ActiveRecord::Migration[7.0]
  def change
    add_column :components, :description, :string
  end
end
