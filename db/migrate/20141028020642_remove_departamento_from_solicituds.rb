class RemoveDepartamentoFromSolicituds < ActiveRecord::Migration
  def change
    remove_column :solicituds, :departamento, :string
    remove_column :solicituds, :municipio, :string
  end
end
