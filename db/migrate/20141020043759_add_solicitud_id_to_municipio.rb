class AddSolicitudIdToMunicipio < ActiveRecord::Migration
  def change
    add_column :municipios, :solicitud_id, :integer
  end
end
