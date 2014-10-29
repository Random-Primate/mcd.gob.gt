class RemoveMenorFromBeneficiarios < ActiveRecord::Migration
  def change
    remove_column :beneficiarios, :menor, :boolean
  end
end
