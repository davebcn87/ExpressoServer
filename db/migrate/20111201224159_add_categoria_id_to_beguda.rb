class AddCategoriaIdToBeguda < ActiveRecord::Migration
  def change
    add_column :begudes, :categoria_id, :int
  end
end
