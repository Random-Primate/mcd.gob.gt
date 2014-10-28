class AddImplementosIdToSolicituds < ActiveRecord::Migration
  def change
    add_column :solicituds, :implementos_id, :integer
  end
end
