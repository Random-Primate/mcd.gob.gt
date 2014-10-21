class AddColumnsToSolicitud < ActiveRecord::Migration
  def change
    add_column :solicituds, :departamento, :string
    add_column :solicituds, :municipio, :string
  end
end
