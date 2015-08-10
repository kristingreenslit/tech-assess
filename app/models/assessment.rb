class Assessment < ActiveRecord::Base
  ## association looks good
  belongs_to :computer # an assessment belongs to a computer
end
