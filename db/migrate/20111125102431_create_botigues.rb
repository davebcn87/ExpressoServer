class CreateBotigues < ActiveRecord::Migration
  def change
    create_table :botigues do |t|
      t.string :pass
      t.float :lat
      t.float :lang

      t.timestamps
    end
  end
end
