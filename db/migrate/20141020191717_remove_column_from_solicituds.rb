class RemoveColumnFromSolicituds < ActiveRecord::Migration
  def change
    remove_column :solicituds, :implementos, :text
  end
end
