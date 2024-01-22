class CreateComponents < ActiveRecord::Migration[7.0]
  def change
    create_table :components do |t|
      t.string :name
      t.references :boat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
