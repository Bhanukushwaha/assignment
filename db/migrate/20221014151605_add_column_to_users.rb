class AddColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :company_id, :integer
    add_column :users, :role, :string
    add_column :users, :start_date, :datetime
    add_column :users, :end_date, :datetime
    add_column :users, :is_active, :boolean
    add_column :users, :image, :string
  end
end
