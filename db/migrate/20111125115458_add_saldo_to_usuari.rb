class AddSaldoToUsuari < ActiveRecord::Migration
  def change
    add_column :usuaris, :saldo, :float
  end
end
