class RemoveSolicitudIdFromImplementos < ActiveRecord::Migration
  def change
    remove_column :implementos, :solicitud_id, :integer
  end
end
