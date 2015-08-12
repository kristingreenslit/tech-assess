class AddScoreToAssessment < ActiveRecord::Migration
  def change
    add_column :assessments, :score, :integer
  end
end
