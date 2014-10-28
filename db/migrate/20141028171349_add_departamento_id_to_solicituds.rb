class AddDepartamentoIdToSolicituds < ActiveRecord::Migration
  def change
    add_column :solicituds, :departamento_id, :integer
  end
end
