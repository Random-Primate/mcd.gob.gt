class AddDepartamentoToBeneficiario < ActiveRecord::Migration
  def change
    add_column :beneficiarios, :departamento, :string
  end
end
