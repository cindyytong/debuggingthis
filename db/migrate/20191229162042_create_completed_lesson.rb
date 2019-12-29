class CreateCompletedLesson < ActiveRecord::Migration[5.2]
  def change
    create_table :completed_lessons do |t|
      t.integer "user_id", null: false 
      t.integer "lesson_id", null: false 
      t.datetime "created_at", null: false 
      t.datetime "updated_at", null: false 
    end
    add_index :completed_lessons, "user_id"
    add_index :completed_lessons, "lesson_id"
    add_index :completed_lessons, ["user_id", "lesson_id"]
  end
end
