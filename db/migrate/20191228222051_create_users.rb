class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string "email", null: false 
      t.string "first_name", null: false 
      t.string "last_name", null: false 
      t.string "user_role", null: false, default: "student", inclusion: ["student", "teacher"] 
      t.string "password_digest", null: false 
      t.string "session_token", null: false 
      t.string "status", null: false, default: "active" 
      t.datetime "created_at", null: false 
      t.datetime "updated_at", null: false 
    end

    add_index :users, :email, unique: true 
    add_index :users, :session_token, unique: true 
  end
end
