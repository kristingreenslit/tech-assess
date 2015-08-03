class User < ActiveRecord::Base
  has_many :computers, dependent: :destroy# a user has many computers
end
