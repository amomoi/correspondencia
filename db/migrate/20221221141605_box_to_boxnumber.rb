class BoxToBoxnumber < ActiveRecord::Migration[6.1]
  def change
    rename_column :leituras, :box, :boxnumber
  end
end
