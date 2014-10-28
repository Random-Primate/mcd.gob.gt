class AddSolicitedToImplementos < ActiveRecord::Migration
  def change
    add_column :implementos, :solicited, :integer
  end
end
