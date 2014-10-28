class AddSolicitedToSolicituds < ActiveRecord::Migration
  def change
    add_column :solicituds, :solicited, :integer
  end
end
