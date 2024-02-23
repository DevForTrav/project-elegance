class RenameParentSpliceIdToChildSpliceIdForSplices < ActiveRecord::Migration[7.0]
  def change
    rename_column :splices, :parent_splice_id, :child_splice_id
  end
end
