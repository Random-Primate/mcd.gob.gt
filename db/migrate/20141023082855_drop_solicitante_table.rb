class DropSolicitanteTable < ActiveRecord::Migration
  def change
    drop_table :solicitantes
  end
end
