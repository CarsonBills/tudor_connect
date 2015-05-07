class ChangeTablesNames < ActiveRecord::Migration
  def change
    rename_table :buildings_tables, :buildings
    rename_table :users_tables, :users
  end
end
