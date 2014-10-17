class CreateMunicipios < ActiveRecord::Migration
  def change
    create_table :municipios do |t|
      t.string :name
      t.integer :departamento_id

      t.timestamps
    end
  end
end
