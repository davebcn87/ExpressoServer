class CreateUsuaris < ActiveRecord::Migration
  def self.up
    create_table :usuaris do |t|
      t.string :username
      t.string :email
      t.string :password_hash
      t.string :password_salt
      t.timestamps
    end
  end

  def self.down
    drop_table :usuaris
  end
end
