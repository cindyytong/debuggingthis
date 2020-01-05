class UpdateUserCourseUniqueCombo < ActiveRecord::Migration[5.2]
  def change
    remove_index :user_courses, [:user_id, :course_id]
    remove_index :user_lessons, [:user_id, :lesson_id]

    add_index :user_courses, [:user_id, :course_id], unique: true 
    add_index :user_lessons, [:user_id, :lesson_id], unique: true 
  end
end
