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

ActiveRecord::Schema.define(version: 20170208013646) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "recipe_categories", force: :cascade do |t|
    t.integer  "category_id"
    t.string   "category_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "recipe_images", force: :cascade do |t|
    t.integer  "images_id"
    t.integer  "recipe_id"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipe_ingredients", force: :cascade do |t|
    t.integer  "ingredient_id"
    t.string   "ingredient_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "recipe_ingredients_units", force: :cascade do |t|
    t.integer  "ingredient_unit_id"
    t.string   "ingredient_unit_name"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "recipe_steps", force: :cascade do |t|
    t.integer  "step_id"
    t.integer  "step_order"
    t.string   "step_instruction"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "recipe_steps_ingredients", force: :cascade do |t|
    t.integer  "step_ingredient_id"
    t.integer  "step_id"
    t.integer  "ingredient_id"
    t.decimal  "step_ingredient_quantity"
    t.integer  "ingredient_units_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.integer  "recipe_id"
    t.string   "recipe_name"
    t.string   "recipe_description"
    t.integer  "recipe_category"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
