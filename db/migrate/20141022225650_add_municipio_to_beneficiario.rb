class AddMunicipioToBeneficiario < ActiveRecord::Migration
  def change
    add_column :beneficiarios, :municipio, :string
  end
end
