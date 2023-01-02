class StatusBox < ApplicationRecord
  belongs_to :lockercliente
  validates_associated :box_number
  validates_associated :lockercliente_id
end
