class DropStatusBoxTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :status_boxes
  end
end
