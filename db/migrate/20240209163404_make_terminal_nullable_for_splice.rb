class MakeTerminalNullableForSplice < ActiveRecord::Migration[7.0]
  def change
    change_column_null :splices, :terminal_id, true
  end
end
