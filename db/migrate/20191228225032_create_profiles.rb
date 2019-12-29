class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.integer "user_id", null: false 
      t.string "img_url"
      t.string "linkedin_url"
      t.string "github_url"
      t.string "resume_url"
      t.string "cover_letter_url"
      t.datetime "created_at", null: false 
      t.datetime "updated_at", null: false 
    end

    add_index :profiles, :user_id, unique: true 
  end
end
