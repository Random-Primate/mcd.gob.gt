class ChangeImplementosIdFromSolicituds < ActiveRecord::Migration
  def change
    rename_column :solicituds, :implementos_id, :implemento_id
  end
end
