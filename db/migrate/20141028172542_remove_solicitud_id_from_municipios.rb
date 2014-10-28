class RemoveSolicitudIdFromMunicipios < ActiveRecord::Migration
  def change
    remove_column :municipios, :solicitud_id, :integer
  end
end
