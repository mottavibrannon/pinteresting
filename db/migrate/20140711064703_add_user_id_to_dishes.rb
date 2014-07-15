class AddUserIdToDishes < ActiveRecord::Migration
  def change
    add_column :dishes, :user_id, :integer
    add_index :dishes, :user_id
  end
end
