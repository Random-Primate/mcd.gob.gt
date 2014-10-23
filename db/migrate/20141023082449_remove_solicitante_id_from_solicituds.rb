class RemoveSolicitanteIdFromSolicituds < ActiveRecord::Migration
  def change
    remove_column :solicituds, :solicitante_id, :integer
  end
end
