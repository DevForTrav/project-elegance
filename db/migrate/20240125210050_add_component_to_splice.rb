class AddComponentToSplice < ActiveRecord::Migration[7.0]
  def change
    add_reference :splices, :component, null: false, foreign_key: true
  end
end
