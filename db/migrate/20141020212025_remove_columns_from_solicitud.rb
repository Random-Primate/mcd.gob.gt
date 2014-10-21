class RemoveColumnsFromSolicitud < ActiveRecord::Migration
  def change
    remove_column :solicituds, :departamento_id, :integer
    remove_column :solicituds, :municipio_id, :integer
  end
end
