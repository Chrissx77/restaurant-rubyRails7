class RenameTablesIdToTableIdInOrders < ActiveRecord::Migration[7.0]
  def change
    rename_column :orders, :tables_id, :table_id
  end
end
