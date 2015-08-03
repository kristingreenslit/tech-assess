class CreateAssessments < ActiveRecord::Migration
  def change
    create_table :assessments do |t|
      t.string :name
      t.references :computer, index: true, foreign_key: true
    end
  end
end
