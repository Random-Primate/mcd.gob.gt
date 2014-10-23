class RemoveBeneficiarioIdFromDepartamento < ActiveRecord::Migration
  def change
    remove_column :departamentos, :beneficiario_id, :integer
  end
end
