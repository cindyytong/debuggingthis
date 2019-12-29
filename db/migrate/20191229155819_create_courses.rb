class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string "title", null: false 
      t.text "description", null: false, limit: 500 
      t.string "img_url"
      t.integer "duration"
      t.datetime "created_at", null: false 
      t.datetime "updated_at", null: false 
    end
    add_index :courses, :title, unique: true 
  end
end
