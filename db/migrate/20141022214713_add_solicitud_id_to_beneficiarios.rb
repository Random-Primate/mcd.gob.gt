class AddSolicitudIdToBeneficiarios < ActiveRecord::Migration
  def change
    add_column :beneficiarios, :solicitud_id, :integer
  end
end
