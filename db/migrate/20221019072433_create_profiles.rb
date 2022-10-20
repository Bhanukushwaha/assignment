class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :real_name
      t.string :image_name
      t.integer :imagable_id
      t.string :imagable_type

      t.timestamps
    end
  end
end
