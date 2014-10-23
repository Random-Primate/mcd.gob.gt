class AddSolicitanteToSolicituds < ActiveRecord::Migration
  def change
    add_column :solicituds, :sol_f_name, :string
    add_column :solicituds, :sol_s_name, :string
    add_column :solicituds, :sol_fl_name, :string
    add_column :solicituds, :sol_sl_name, :string
    add_column :solicituds, :sol_cui, :string
    add_column :solicituds, :sol_tel, :string
    add_column :solicituds, :sol_email, :string
  end
end
