class CreateStatusBoxes < ActiveRecord::Migration[6.1]
  def change
    create_table :status_boxes do |t|
      t.string :torre
      t.string :n_apto
      t.string :id_page
      t.string :senha
      t.string :envio
      t.string :n_encomendas
      t.string :box_number
      t.string :ativo_inativo
      t.references :lockercliente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
