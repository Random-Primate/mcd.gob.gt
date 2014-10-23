class RemoveBeneficiarioIdFromPueblo < ActiveRecord::Migration
  def change
    remove_column :pueblos, :beneficiario_id, :integer
  end
end
