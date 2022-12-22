class Boxes < ActiveRecord::Migration[6.1]
  def change
    remove_reference :boxes, :cliente, index: true, foreign_key: true
    add_reference :boxes, :lockercliente, index: true, foreign_key: true
  end
end
