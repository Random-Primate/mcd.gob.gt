class CreateBeneficiarios < ActiveRecord::Migration
  def change
    create_table :beneficiarios do |t|
      t.string :cui
      t.string :first_name
      t.string :second_first_name
      t.string :first_last_name
      t.string :second_last_name
      t.boolean :menor

      t.timestamps
    end
  end
end
