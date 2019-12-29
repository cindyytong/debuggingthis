class UpdateCompletedLessons < ActiveRecord::Migration[5.2]
  def change
    rename_table :completed_lessons, :user_lessons
    add_column :user_lessons, :completed, :boolean, default: false 
  end
end
