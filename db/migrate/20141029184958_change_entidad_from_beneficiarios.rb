class ChangeEntidadFromBeneficiarios < ActiveRecord::Migration
  def change
    remove_column :beneficiarios, :entidad, :integer
    remove_column :solicituds, :entidad, :integer
  end
end
