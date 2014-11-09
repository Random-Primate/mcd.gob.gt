class AddReservedToSoliciteds < ActiveRecord::Migration
  def change
    add_column :soliciteds, :reserved, :integer
  end
end
