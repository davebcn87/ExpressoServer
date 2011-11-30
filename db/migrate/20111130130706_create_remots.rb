class CreateRemots < ActiveRecord::Migration
  def change
    create_table :remots do |t|
      t.string :hash
      t.references :usuari

      t.timestamps
    end
    add_index :remots, :usuari_id
  end
end
