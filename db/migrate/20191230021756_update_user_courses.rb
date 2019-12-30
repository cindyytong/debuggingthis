class UpdateUserCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :user_courses, :completed, :boolean, default: :false 
  end
end
