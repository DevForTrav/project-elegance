class AddWiringHarnessToComponents < ActiveRecord::Migration[7.0]
  def change
    add_reference :components, :wiring_harness, null: true, foreign_key: true
  end
end
