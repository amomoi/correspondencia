class DropTables < ActiveRecord::Migration[6.1]
  def change
    drop_table :leituras
    drop_table :usuarios
    drop_table :clientes
  end
end
