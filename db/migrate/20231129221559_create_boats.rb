class CreateBoats < ActiveRecord::Migration[7.0]
  def change
    create_table :boats do |t|
      t.integer :year
      t.string :model
      t.string :manufacturer

      t.timestamps
    end
  end
end
