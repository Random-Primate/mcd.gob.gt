class AddColumnsToSolicituds < ActiveRecord::Migration
  def change
    add_column :solicituds, :municipio_id, :integer
    add_column :solicituds, :departamento_id, :integer
  end
end
