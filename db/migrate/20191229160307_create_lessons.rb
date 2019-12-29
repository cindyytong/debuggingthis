class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string "title", null: false 
      t.integer "course_id", null: false 
      t.integer "duration" 
      t.text "lesson_content"
      t.string "video_url"
      t.datetime "created_at", null: false 
      t.datetime "updated_at", null: false 
    end
    add_index "lessons", "title", unique: true
    add_index "lessons", "course_id"
  end
end
