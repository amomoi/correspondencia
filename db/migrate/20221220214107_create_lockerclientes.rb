class CreateLockerclientes < ActiveRecord::Migration[6.1]
  def change
    create_table :lockerclientes do |t|
      t.string :nome_empresa
      t.string :site

      t.timestamps
    end
  end
end
