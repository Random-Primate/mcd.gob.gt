class AddDisciplinaToSolicituds < ActiveRecord::Migration
  def change
    add_column :solicituds, :disciplina, :string
  end
end
