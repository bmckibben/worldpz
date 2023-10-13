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

ActiveRecord::Schema[7.0].define(version: 2017_02_23_134800) do
  create_table "blog_comments", charset: "utf8mb4", force: :cascade do |t|
    t.text "body"
    t.integer "commentable_id"
    t.string "commentable_type"
    t.integer "publish", default: 0, null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "blogs", charset: "utf8mb4", force: :cascade do |t|
    t.string "title", null: false
    t.text "body"
    t.integer "publish", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipe_categories", charset: "utf8mb4", force: :cascade do |t|
    t.string "category_name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "recipe_images", charset: "utf8mb4", force: :cascade do |t|
    t.integer "recipe_id"
    t.string "image_url"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "recipe_ingredient_links", charset: "utf8mb4", force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "recipe_ingredient_id"
    t.decimal "ingredient_quantity", precision: 10
    t.integer "recipe_ingredients_unit_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "recipe_ingredients", charset: "utf8mb4", force: :cascade do |t|
    t.string "ingredient_name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "recipe_ingredients_units", charset: "utf8mb4", force: :cascade do |t|
    t.string "ingredient_unit_name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "recipe_steps", charset: "utf8mb4", force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "step_order"
    t.string "step_instruction"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "recipes", charset: "utf8mb4", force: :cascade do |t|
    t.integer "category_id"
    t.string "recipe_name"
    t.string "recipe_description"
    t.integer "active", default: 0, null: false
    t.integer "sort_order"
    t.integer "prep_minutes"
    t.integer "cook_minutes"
    t.integer "servings_quantity"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "email", default: "", null: false
    t.integer "role_cd", default: 0, null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
