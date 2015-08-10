class Computer < ActiveRecord::Base
  belongs_to :user
  has_many :assessments, dependent: :destroy

  def score
    sum = 0
    self.assessments.each do |assessment|
      sum = sum + assessment.score.to_i
    end
    sum
  end
end
