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

ActiveRecord::Schema.define(version: 2019_07_29_181827) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adverbs", force: :cascade do |t|
    t.string "name"
    t.string "language", null: false
    t.jsonb "meta", default: {}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bracket_words", force: :cascade do |t|
    t.string "language", null: false
    t.jsonb "meta", default: {}
    t.string "sentences", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "display_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "parent_id"
    t.index ["parent_id"], name: "index_categories_on_parent_id"
  end

  create_table "category_exercises", force: :cascade do |t|
    t.bigint "category_id"
    t.bigint "exercise_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id", "exercise_id"], name: "index_category_exercises_on_category_id_and_exercise_id", unique: true
    t.index ["category_id"], name: "index_category_exercises_on_category_id"
    t.index ["exercise_id"], name: "index_category_exercises_on_exercise_id"
  end

  create_table "category_words", force: :cascade do |t|
    t.bigint "category_id"
    t.bigint "word_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id", "word_id"], name: "index_category_words_on_category_id_and_word_id", unique: true
    t.index ["category_id"], name: "index_category_words_on_category_id"
    t.index ["word_id"], name: "index_category_words_on_word_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string "exerciseable_type"
    t.bigint "exerciseable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exerciseable_type", "exerciseable_id"], name: "index_exercises_on_exerciseable_type_and_exerciseable_id"
  end

  create_table "expressions", force: :cascade do |t|
    t.string "name"
    t.string "language", null: false
    t.jsonb "meta", default: {}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kanjis", force: :cascade do |t|
    t.string "name"
    t.string "language", default: "jp"
    t.jsonb "meta", default: {}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "on_yomi", default: [], array: true
    t.string "kun_yomi", default: [], array: true
  end

  create_table "nouns", force: :cascade do |t|
    t.string "name"
    t.string "language", null: false
    t.jsonb "meta", default: {}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sentences", force: :cascade do |t|
    t.string "answers", default: [], array: true
    t.string "clues", default: [], array: true
    t.jsonb "example", default: {}
    t.string "language", null: false
    t.jsonb "meta", default: {}
    t.boolean "multiline", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "examples", default: []
  end

  create_table "suffixes", force: :cascade do |t|
    t.string "name"
    t.string "language", null: false
    t.jsonb "meta", default: {}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "invite_token"
    t.datetime "invite_accepted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["invite_token"], name: "index_users_on_invite_token", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "verbs", force: :cascade do |t|
    t.string "name"
    t.string "language", null: false
    t.jsonb "meta", default: {}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "word_tables", force: :cascade do |t|
    t.string "language", null: false
    t.jsonb "meta", default: {}
    t.string "words", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "word_translations", force: :cascade do |t|
    t.bigint "word_id"
    t.bigint "translation_word_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["translation_word_id"], name: "index_word_translations_on_translation_word_id"
    t.index ["word_id", "translation_word_id"], name: "index_word_translations_on_word_id_and_translation_word_id", unique: true
    t.index ["word_id"], name: "index_word_translations_on_word_id"
  end

  create_table "words", force: :cascade do |t|
    t.string "wordable_type"
    t.bigint "wordable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["wordable_type", "wordable_id"], name: "index_words_on_wordable_type_and_wordable_id"
  end

  add_foreign_key "categories", "categories", column: "parent_id"
  add_foreign_key "category_exercises", "categories"
  add_foreign_key "category_exercises", "exercises"
  add_foreign_key "category_words", "categories"
  add_foreign_key "category_words", "words"
  add_foreign_key "word_translations", "words"
  add_foreign_key "word_translations", "words", column: "translation_word_id"
end
