class AddLockerClienteToLockerusuarios < ActiveRecord::Migration[6.1]
  def change
    add_column :lockerusuarios, :lockercliente, :string
    add_reference :lockerusuarios, :lockercliente, foreign_key: true
  end
end
