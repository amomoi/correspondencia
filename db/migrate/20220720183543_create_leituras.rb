class CreateLeituras < ActiveRecord::Migration[6.1]
  def change
    create_table :leituras do |t|
      t.string :torre
      t.string :n_apto
      t.string :id_page
      t.string :senha
      t.integer :envio
      t.integer :n_encomendas
      t.references :box, null: false, foreign_key: true

      t.timestamps
    end
  end
end
