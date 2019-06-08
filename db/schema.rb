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

ActiveRecord::Schema.define(version: 2019_06_08_011526) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adverbs", force: :cascade do |t|
    t.string "name"
    t.string "language", null: false
    t.jsonb "meta", default: {}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "display_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_subcategories", force: :cascade do |t|
    t.bigint "category_id"
    t.bigint "subcategory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id", "subcategory_id"], name: "index_category_subcategories_on_category_id_and_subcategory_id", unique: true
    t.index ["category_id"], name: "index_category_subcategories_on_category_id"
    t.index ["subcategory_id"], name: "index_category_subcategories_on_subcategory_id"
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

  create_table "verbs", force: :cascade do |t|
    t.string "name"
    t.string "language", null: false
    t.jsonb "meta", default: {}
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

  add_foreign_key "category_subcategories", "categories"
  add_foreign_key "category_subcategories", "categories", column: "subcategory_id"
  add_foreign_key "category_words", "categories"
  add_foreign_key "category_words", "words"
  add_foreign_key "word_translations", "words"
  add_foreign_key "word_translations", "words", column: "translation_word_id"
end
