class AddPuebloToBeneficiario < ActiveRecord::Migration
  def change
    add_column :beneficiarios, :pueblo, :string
  end
end
