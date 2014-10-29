class DropTableSolicitudImplementos < ActiveRecord::Migration
  def change
    drop_table :solicitud_implementos
  end
end
