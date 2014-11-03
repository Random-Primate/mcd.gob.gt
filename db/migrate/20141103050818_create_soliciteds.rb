class CreateSoliciteds < ActiveRecord::Migration
  def change
    create_table :soliciteds do |t|
      t.integer :amount
      t.integer :solicitud_id
      t.integer :implemento_id

      t.timestamps
    end
  end
end
