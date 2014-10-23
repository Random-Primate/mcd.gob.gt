class AddBeneficiarioIdToIdioma < ActiveRecord::Migration
  def change
    add_column :idiomas, :beneficiario_id, :integer
  end
end
