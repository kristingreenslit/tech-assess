class Computer < ActiveRecord::Base
  # has_many :users # not using a computer has many users since a "user" will be defined as a person with one
  has_many :assessments  # a computer has many assessments
end
