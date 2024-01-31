class MakeSpliceInSpliceNullable < ActiveRecord::Migration[7.0]
  def change
    change_column_null :splices, :splice_id, true
  end
end
