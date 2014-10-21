class RemoveImplementosIdFromSolicituds < ActiveRecord::Migration
  def change
    remove_column :solicituds, :implementos_id, :integer
  end
end
