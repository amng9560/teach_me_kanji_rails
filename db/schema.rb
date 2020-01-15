# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_14_234757) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "character_words", force: :cascade do |t|
    t.bigint "word_id", null: false
    t.bigint "character_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_character_words_on_character_id"
    t.index ["word_id"], name: "index_character_words_on_word_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "symbol"
    t.string "onyomi_1"
    t.string "onyomi_2"
    t.string "kunyomi_1"
    t.string "kunyomi_2"
    t.string "meaning"
    t.string "stroke_gif"
    t.bigint "kanji_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["kanji_id"], name: "index_characters_on_kanji_id"
  end

  create_table "kanjis", force: :cascade do |t|
    t.text "onyomi"
    t.text "kunyomi"
    t.text "history"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_words", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "word_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_user_words_on_user_id"
    t.index ["word_id"], name: "index_user_words_on_word_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "words", force: :cascade do |t|
    t.string "word"
    t.string "meaning"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "character_words", "characters"
  add_foreign_key "character_words", "words"
  add_foreign_key "characters", "kanjis"
  add_foreign_key "user_words", "users"
  add_foreign_key "user_words", "words"
end
