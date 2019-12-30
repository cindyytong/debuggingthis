class ChangeDefaultUserCourses < ActiveRecord::Migration[5.2]
  def change
    change_column :user_courses, :completed, :boolean, :default => false, :null => false 
    change_column :user_lessons, :completed, :boolean, :default => false, :null => false 
  end
end
