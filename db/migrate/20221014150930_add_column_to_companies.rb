class AddColumnToCompanies < ActiveRecord::Migration[7.0]
  def change
    add_column :companies, :first_name, :string
  end
end
