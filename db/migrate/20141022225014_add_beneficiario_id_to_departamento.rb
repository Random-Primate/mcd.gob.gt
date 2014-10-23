class AddBeneficiarioIdToDepartamento < ActiveRecord::Migration
  def change
    add_column :departamentos, :beneficiario_id, :integer
  end
end
