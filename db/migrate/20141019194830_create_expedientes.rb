class CreateExpedientes < ActiveRecord::Migration
  def change
    create_table :expedientes do |t|
      t.string :num_gestion
      t.string :num_exp

      t.timestamps
    end
  end
end
