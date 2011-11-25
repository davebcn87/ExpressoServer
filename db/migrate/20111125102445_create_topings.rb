class CreateTopings < ActiveRecord::Migration
  def change
    create_table :topings do |t|
      t.integer :comanda_id
      t.integer :extra_id

      t.timestamps
    end
  end
end
