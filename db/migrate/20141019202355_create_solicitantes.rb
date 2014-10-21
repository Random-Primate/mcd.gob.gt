class CreateSolicitantes < ActiveRecord::Migration
  def change
    create_table :solicitantes do |t|
      t.string :first_name
      t.string :second_name
      t.string :first_last_name
      t.string :second_last_name
      t.string :cui
      t.string :tel
      t.string :email

      t.timestamps
    end
  end
end
