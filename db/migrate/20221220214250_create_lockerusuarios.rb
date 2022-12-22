class CreateLockerusuarios < ActiveRecord::Migration[6.1]
  def change
    create_table :lockerusuarios do |t|
      t.string :nome
      t.string :email
      t.string :cpf
      t.string :celular
      t.string :senha

      t.timestamps
    end
  end
end
