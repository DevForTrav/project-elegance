class AddSplicesToSplices < ActiveRecord::Migration[7.0]
  def change
    add_reference :splices, :splice, null: true, index: true
  end
end
