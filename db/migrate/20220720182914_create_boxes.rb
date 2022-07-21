class CreateBoxes < ActiveRecord::Migration[6.1]
  def change
    create_table :boxes do |t|
      t.string :numero
      t.references :cliente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
