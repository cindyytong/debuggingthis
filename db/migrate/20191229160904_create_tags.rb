class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string "topic", null: false 
      t.datetime "created_at", null: false 
      t.datetime "updated_at", null: false 
    end
    add_index :tags, "topic", unique: true
  end
end
