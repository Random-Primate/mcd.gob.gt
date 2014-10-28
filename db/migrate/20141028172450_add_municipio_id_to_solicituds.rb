class AddMunicipioIdToSolicituds < ActiveRecord::Migration
  def change
    add_column :solicituds, :municipio_id, :integer
  end
end
