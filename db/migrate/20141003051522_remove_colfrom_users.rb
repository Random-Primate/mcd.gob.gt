class RemoveColfromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :role_id
    remove_column :users, :roles_mask
  end
end
