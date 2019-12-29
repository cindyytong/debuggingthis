class CreateUserCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :user_courses do |t|
      t.integer "user_id", null: false 
      t.integer "course_id", null: false 
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
    add_index :user_courses, :user_id 
    add_index :user_courses, :course_id 
    add_index :user_courses, [:user_id, :course_id]
  end
end
