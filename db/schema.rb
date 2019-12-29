# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_29_185150) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.string "img_url"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title"], name: "index_courses_on_title", unique: true
  end

  create_table "lessons", force: :cascade do |t|
    t.string "title", null: false
    t.integer "course_id", null: false
    t.integer "duration"
    t.text "lesson_content"
    t.string "video_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_lessons_on_course_id"
    t.index ["title"], name: "index_lessons_on_title", unique: true
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "img_url"
    t.string "linkedin_url"
    t.string "github_url"
    t.string "resume_url"
    t.string "cover_letter_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id", unique: true
  end

  create_table "tag_courses", force: :cascade do |t|
    t.integer "course_id", null: false
    t.integer "tag_id", null: false
    t.index ["course_id", "tag_id"], name: "index_tag_courses_on_course_id_and_tag_id", unique: true
    t.index ["course_id"], name: "index_tag_courses_on_course_id"
    t.index ["tag_id"], name: "index_tag_courses_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "topic", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["topic"], name: "index_tags_on_topic", unique: true
  end

  create_table "user_courses", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "course_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_user_courses_on_course_id"
    t.index ["user_id", "course_id"], name: "index_user_courses_on_user_id_and_course_id"
    t.index ["user_id"], name: "index_user_courses_on_user_id"
  end

  create_table "user_lessons", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "lesson_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "completed", default: false
    t.index ["lesson_id"], name: "index_user_lessons_on_lesson_id"
    t.index ["user_id", "lesson_id"], name: "index_user_lessons_on_user_id_and_lesson_id"
    t.index ["user_id"], name: "index_user_lessons_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "user_role", default: "student", null: false
    t.string "password_digest", null: false
    t.string "session_token", null: false
    t.string "status", default: "active", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["session_token"], name: "index_users_on_session_token", unique: true
  end

end
