class RemoveBoxFromStatusBoxes < ActiveRecord::Migration[6.1]
  def change
    remove_reference :status_boxes, :box, index: true, foreign_key: true
    add_reference :status_boxes, :lockercliente, index: true, foreign_key: true
  end
end
