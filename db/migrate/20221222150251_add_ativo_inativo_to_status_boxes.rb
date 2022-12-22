class AddAtivoInativoToStatusBoxes < ActiveRecord::Migration[6.1]
  def change
    add_column :status_boxes, :ativo_inativo, :string
  end
end
