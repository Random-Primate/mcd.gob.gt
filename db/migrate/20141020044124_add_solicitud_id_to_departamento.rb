class AddSolicitudIdToDepartamento < ActiveRecord::Migration
  def change
    add_column :departamentos, :solicitud_id, :integer
  end
end
