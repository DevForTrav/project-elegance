class MakeSpliceSpliceIdNullable < ActiveRecord::Migration[7.0]
  def change
    remove_column :splices, :splice_id, :bigint
    add_reference :splices, :parent_splice, foreign_key: { to_table: :splices }, null: true
  end
end
