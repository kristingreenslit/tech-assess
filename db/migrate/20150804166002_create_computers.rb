class CreateComputers < ActiveRecord::Migration
  def change
    create_table :computers do |t|
      t.belongs_to :user
      t.text :name
      t.timestamps null: false
    end
  end
end
