class CreateUsuaris < ActiveRecord::Migration
  def change
    create_table :usuaris do |t|
      t.string :nom
      t.string :pass
      t.float :saldo

      t.timestamps
    end
  end
end
