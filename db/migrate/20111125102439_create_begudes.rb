class CreateBegudes < ActiveRecord::Migration
  def change
    create_table :begudes do |t|
      t.float :preuTall
      t.float :preuGrande
      t.float :preuVenti

      t.timestamps
    end
  end
end
