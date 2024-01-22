class AllowNullForSecondaryTerminalOnConnector < ActiveRecord::Migration[7.0]
  def change
    change_column_null :connectors, :secondary_terminal_id, true
  end
end
