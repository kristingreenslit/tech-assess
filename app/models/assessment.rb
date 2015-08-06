# Assessment(id: integer, name: string, computer_id: integer) 
class Assessment < ActiveRecord::Base
  belongs_to :computer # an assessment belongs to a computer
end
