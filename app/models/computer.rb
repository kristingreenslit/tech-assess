class Computer < ActiveRecord::Base
  belongs_to :user
  has_many :assessments  
end
