class CreatePueblos < ActiveRecord::Migration
  def change
    create_table :pueblos do |t|
      t.string :name

      t.timestamps
    end
  end
end
