class AddAtivoInativoToLeituras < ActiveRecord::Migration[6.1]
  def change
    add_column :leituras, :ativo_inativo, :string
  end
end
