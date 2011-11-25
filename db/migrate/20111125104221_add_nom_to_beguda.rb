class AddNomToBeguda < ActiveRecord::Migration
  def change
    add_column :begudes, :nom, :string
  end
end
