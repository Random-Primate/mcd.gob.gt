class CreateSolicituds < ActiveRecord::Migration
  def change
    create_table :solicituds do |t|
      t.text :comunidades
      t.string :municipio
      t.string :departamento
      t.text :implementos
      t.references :solicitante, index: true

      t.timestamps
    end
  end
end
