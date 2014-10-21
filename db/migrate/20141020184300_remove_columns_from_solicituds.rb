class RemoveColumnsFromSolicituds < ActiveRecord::Migration
  def change
    remove_column :solicituds, :municipio, :string
    remove_column :solicituds, :departamento, :string
  end
end