class AddImplementosToSolicituds < ActiveRecord::Migration
  def change
    add_column :solicituds, :implementos, :text
  end
end
