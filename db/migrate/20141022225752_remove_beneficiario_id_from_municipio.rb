class RemoveBeneficiarioIdFromMunicipio < ActiveRecord::Migration
  def change
    remove_column :municipios, :beneficiario_id, :integer
  end
end
