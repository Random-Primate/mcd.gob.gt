class AddRolesMaskToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role_id, :integer
    add_column :users, :roles_mask, :integer
  end
end
