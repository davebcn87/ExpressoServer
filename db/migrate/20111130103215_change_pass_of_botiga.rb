class ChangePassOfBotiga < ActiveRecord::Migration
  def up
    rename_column :botigues, :pass, :nom
  end

  def down
    rename_column :botigues, :nom, :pass
  end
end
