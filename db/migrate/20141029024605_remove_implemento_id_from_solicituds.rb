class RemoveImplementoIdFromSolicituds < ActiveRecord::Migration
  def change
    remove_column :solicituds, :implemento_id, :integer
  end
end
