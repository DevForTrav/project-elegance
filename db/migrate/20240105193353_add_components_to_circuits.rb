class AddComponentsToCircuits < ActiveRecord::Migration[7.0]
  def change
    add_reference :circuits, :component, null: false, foreign_key: true
  end
end
