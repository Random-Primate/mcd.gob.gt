class AddImplementosSolicitudsTable < ActiveRecord::Migration
  def change
    create_table 'implementos_solicituds', :id => false do |t|
      t.column :implemento_id, :integer
      t.column :solicitud_id, :integer
    end
  end
end
