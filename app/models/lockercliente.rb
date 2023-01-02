class Lockercliente < ApplicationRecord
    has_many :lockerusuarios
    has_many :boxes
    has_many :status_boxes
    
end
