class NumeroToBox < ActiveRecord::Migration[6.1]
  def change
    rename_column :leituras, :numero, :box
  end
end
