class CreateComputers < ActiveRecord::Migration
  def change
    # migrations look good
    create_table :computers do |t|
      t.belongs_to :user
      t.text :name
      t.text :computer_type
      t.timestamps null: false
    end
  end
end
