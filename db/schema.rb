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

ActiveRecord::Schema.define(version: 20141020083038) do

  create_table "competitions", force: true do |t|
    t.string   "name"
    t.boolean  "is_league"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fixtures", force: true do |t|
    t.integer  "home_team"
    t.integer  "away_team"
    t.integer  "competition_id"
    t.date     "date"
    t.boolean  "played"
    t.integer  "home_score"
    t.integer  "away_score"
    t.text     "report"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news_items", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "firstname",  limit: 30
    t.string   "surname",    limit: 30
    t.string   "position"
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "static_pages", force: true do |t|
    t.string   "name"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statistics", force: true do |t|
    t.integer  "fixture_id"
    t.integer  "player_id"
    t.boolean  "mom_manager"
    t.boolean  "mom_opposition"
    t.integer  "goals"
    t.integer  "stars"
    t.boolean  "yellow_card"
    t.boolean  "red_card"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tables", force: true do |t|
    t.integer  "team_id_id"
    t.integer  "played"
    t.integer  "won"
    t.integer  "drawn"
    t.integer  "lost"
    t.integer  "for"
    t.integer  "against"
    t.integer  "deducted"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tables", ["team_id_id"], name: "index_tables_on_team_id_id"

  create_table "teams", force: true do |t|
    t.string   "short_name", limit: 15
    t.string   "long_name",  limit: 100
    t.boolean  "is_main"
    t.boolean  "in_league"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
