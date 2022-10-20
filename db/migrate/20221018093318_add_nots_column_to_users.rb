class AddNotsColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :notes, :text
    add_column :users, :image_id, :integer
  end
end
