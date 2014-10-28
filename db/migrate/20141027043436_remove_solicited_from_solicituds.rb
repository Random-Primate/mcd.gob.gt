class RemoveSolicitedFromSolicituds < ActiveRecord::Migration
  def change
    remove_column :solicituds, :solicited, :integer
  end
end
