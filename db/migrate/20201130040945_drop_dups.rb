class DropDups < ActiveRecord::Migration[5.2]
  def up
    drop_table :users_tables
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
