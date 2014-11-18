class AddAvatarToImplementos < ActiveRecord::Migration
  def change
    add_column :implementos, :avatar, :string
  end
end
