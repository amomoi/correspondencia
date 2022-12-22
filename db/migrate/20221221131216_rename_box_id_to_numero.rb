class RenameBoxIdToNumero < ActiveRecord::Migration[6.1]
  def change
    rename_column :leituras, :box_id, :numero
  end
end
