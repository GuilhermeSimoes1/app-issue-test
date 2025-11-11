# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2025_11_11_170000) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "buildings", force: :cascade do |t|
    t.string "code"
    t.datetime "created_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.integer "parent_id"
    t.string "slug"
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "body"
    t.datetime "created_at", null: false
    t.integer "issue_id"
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "action"
    t.datetime "created_at", null: false
    t.jsonb "from_state"
    t.integer "issue_id"
    t.jsonb "metadata"
    t.jsonb "to_state"
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "issues", force: :cascade do |t|
    t.integer "assignee_id"
    t.integer "building_id"
    t.integer "category_id"
    t.datetime "closed_at"
    t.datetime "created_at", null: false
    t.text "description"
    t.integer "duplicate_of_id"
    t.float "latitude"
    t.float "longitude"
    t.integer "reporter_id"
    t.integer "room_id"
    t.integer "status"
    t.string "title"
    t.datetime "updated_at", null: false
    t.integer "visibility"
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "building_id"
    t.string "code"
    t.datetime "created_at", null: false
    t.integer "floor"
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "issue_id"
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "email"
    t.string "name"
    t.string "provider"
    t.integer "role"
    t.string "uid"
    t.datetime "updated_at", null: false
  end

  create_table "votes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "issue_id"
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end
end
