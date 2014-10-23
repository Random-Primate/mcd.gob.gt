class AddBeneficiarioIdToMunicipio < ActiveRecord::Migration
  def change
    add_column :municipios, :beneficiario_id, :integer
  end
end
