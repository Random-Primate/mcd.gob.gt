class AddColumnsToImplementos < ActiveRecord::Migration
  def change
    add_column :implementos, :description, :text
    add_column :implementos, :available, :integer
    add_column :implementos, :reserved, :integer
  end
end
