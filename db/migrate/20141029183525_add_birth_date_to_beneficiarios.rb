class AddBirthDateToBeneficiarios < ActiveRecord::Migration
  def change
    add_column :beneficiarios, :birth_date, :date
    add_column :beneficiarios, :no_partida_nacimiento, :string
    add_column :beneficiarios, :folio_partida_nacimiento, :string
    add_column :beneficiarios, :libro_partida_nacimiento, :string
    add_column :beneficiarios, :entidad, :integer
  end
end
