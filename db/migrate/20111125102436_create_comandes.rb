class CreateComandes < ActiveRecord::Migration
  def change
    create_table :comandes do |t|
      t.integer :usuari_id
      t.string :beguda_id
      t.boolean :feta

      t.timestamps
    end
  end
end
