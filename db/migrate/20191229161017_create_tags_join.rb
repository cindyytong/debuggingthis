class CreateTagsJoin < ActiveRecord::Migration[5.2]
  def change
    create_table :tag_courses do |t|
      t.integer "course_id", null: false 
      t.integer "tag_id", null: false 
    end
    add_index :tag_courses, "course_id"
    add_index :tag_courses, "tag_id"
    add_index :tag_courses, ["course_id", "tag_id"], unique: true 
  end
end
