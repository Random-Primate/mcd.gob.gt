class CreateImplementos < ActiveRecord::Migration
  def change
    create_table :implementos do |t|
      t.string :name
      t.integer :piezas

      t.timestamps
    end
  end
end
