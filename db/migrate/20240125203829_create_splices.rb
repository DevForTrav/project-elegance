class CreateSplices < ActiveRecord::Migration[7.0]
  def change
    create_table :splices do |t|
      t.references :circuit, null: false, foreign_key: true
      t.references :terminal, null: false, foreign_key: true
      t.string :label
      t.integer :length

      t.timestamps
    end
  end
end
