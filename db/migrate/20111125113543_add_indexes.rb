class AddIndexes < ActiveRecord::Migration
  def up
    add_index :topings, :comanda_id
    add_index :topings, :extra_id
    add_index :extra_disponibles, :beguda_id
    add_index :extra_disponibles, :extra_id
  end

  def down
    remove_index :topings, :comanda_id
    remove_index :topings, :extra_id
    remove_index :extra_disponibles, :beguda_id
    remove_index :extra_disponibles, :extra_id
  end
end
