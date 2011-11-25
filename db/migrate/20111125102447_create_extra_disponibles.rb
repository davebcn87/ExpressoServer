class CreateExtraDisponibles < ActiveRecord::Migration
  def change
    create_table :extra_disponibles do |t|
      t.integer :beguda_id
      t.integer :extra_id

      t.timestamps
    end
  end
end
