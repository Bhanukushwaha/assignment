class RemoveColumnToUsers < ActiveRecord::Migration[7.0]
  def up
    remove_column :users, :role
    add_column :users, :role_id, :int
  end
  def down
    add_column :users, :role, :string
  end
end
