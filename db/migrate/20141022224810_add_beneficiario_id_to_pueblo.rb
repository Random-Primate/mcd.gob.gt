class AddBeneficiarioIdToPueblo < ActiveRecord::Migration
  def change
    add_column :pueblos, :beneficiario_id, :integer
  end
end
