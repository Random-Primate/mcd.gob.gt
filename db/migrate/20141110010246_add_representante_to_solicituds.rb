class AddRepresentanteToSolicituds < ActiveRecord::Migration
  def change
    add_column :solicituds, :representante, :string
    add_column :solicituds, :fecha_entrega, :date
  end
end
