class User < ActiveRecord::Base
  has_many :computers, dependent: :destroy
end
