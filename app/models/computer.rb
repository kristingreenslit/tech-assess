class Computer < ActiveRecord::Base
  belongs_to :user
  has_many :assessments, dependent: :destroy
end

def change
	create_table :computers do |t|
	t.references :computer
end
end
