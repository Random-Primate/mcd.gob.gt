class AddEntidadToSolicituds < ActiveRecord::Migration
  def change
    add_column :solicituds, :entidad, :integer
  end
end
