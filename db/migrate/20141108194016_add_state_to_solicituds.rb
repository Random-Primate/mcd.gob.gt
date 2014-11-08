class AddStateToSolicituds < ActiveRecord::Migration
  def change
    add_column :solicituds, :state, :string
  end
end
