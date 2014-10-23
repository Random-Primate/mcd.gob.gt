class RemoveBeneficiarioIdFromIdioma < ActiveRecord::Migration
  def change
    remove_column :idiomas, :beneficiario_id, :integer
  end
end
