class AddColumnMonthlyToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :monthly_charge, :float
  end
end
