class AddColorToImplementos < ActiveRecord::Migration
  def change
    add_column :implementos, :color, :string
  end
end
