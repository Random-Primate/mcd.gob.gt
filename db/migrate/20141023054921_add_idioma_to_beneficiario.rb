class AddIdiomaToBeneficiario < ActiveRecord::Migration
  def change
    add_column :beneficiarios, :idioma, :string
  end
end
