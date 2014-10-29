class AddEntidadBeneficiariosAndSolicituds < ActiveRecord::Migration
  def change
    add_column :beneficiarios, :entidad, :string
    add_column :solicituds, :entidad, :string
  end
end
