# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140721092615) do

  create_table "assertions", force: true do |t|
    t.text     "description"
    t.text     "notes"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assertions", ["user_id"], name: "index_assertions_on_user_id"

  create_table "excps", force: true do |t|
    t.boolean  "fixed"
    t.date     "date_fixed"
    t.string   "excp_thread"
    t.text     "excp_trace"
    t.text     "notes"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "excps", ["user_id"], name: "index_excps_on_user_id"

  create_table "occurences", force: true do |t|
    t.date     "date"
    t.string   "device_brand"
    t.string   "device_model"
    t.string   "operation_system_version"
    t.string   "app_version"
    t.integer  "assertion_id"
    t.integer  "excp_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "occurences", ["assertion_id"], name: "index_occurences_on_assertion_id"
  add_index "occurences", ["excp_id"], name: "index_occurences_on_excp_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
