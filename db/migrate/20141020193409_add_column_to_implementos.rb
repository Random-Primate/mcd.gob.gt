class AddColumnToImplementos < ActiveRecord::Migration
  def change
    add_column :implementos, :solicitud_id, :integer
  end
end
