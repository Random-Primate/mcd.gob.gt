class AddCorrelativoToSolicitud < ActiveRecord::Migration
  def change
    add_column :solicituds, :correlativo, :string
    add_column :solicituds, :no_gestion, :string
  end
end
