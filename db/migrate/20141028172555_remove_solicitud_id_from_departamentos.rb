class RemoveSolicitudIdFromDepartamentos < ActiveRecord::Migration
  def change
    remove_column :departamentos, :solicitud_id, :integer
  end
end
