class DeletarColunas < ActiveRecord::Migration[6.1]
  def change
    remove_column :status_boxes, :box
    remove_column :status_boxes, :box_id
    
  end
end
