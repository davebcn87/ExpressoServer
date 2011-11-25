class CreateExtres < ActiveRecord::Migration
  def change
    create_table :extres do |t|
      t.string :nom
      t.float :preu

      t.timestamps
    end
  end
end
