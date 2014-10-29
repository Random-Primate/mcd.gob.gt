class AddSolicitudsImplementosTable < ActiveRecord::Migration
  def change
    create_table 'solicitud_implementos', :id => false do |t|
      t.column :solicitud_id, :integer
      t.column :implemento_id, :integer
    end
  end
end
