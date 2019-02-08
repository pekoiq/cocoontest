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

ActiveRecord::Schema.define(version: 2019_02_07_190023) do

  create_table "crops", force: :cascade do |t|
    t.string "name"
    t.string "transplantordirectseed"
    t.integer "rowsperbed"
    t.integer "seedsperounce"
    t.string "unit"
    t.integer "yield"
    t.integer "priceperunit"
    t.integer "seedsperrowfoot"
    t.integer "greenhouseweeks"
    t.integer "inrowspacing"
    t.integer "seedspercell"
    t.integer "cellsperflat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "planting_id"
    t.integer "croptask_id"
  end

  create_table "croptasks", force: :cascade do |t|
    t.integer "crop_id"
    t.string "task"
    t.integer "weeksfromfielddate"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "planting_id"
  end

  create_table "croptasks_plantings", id: false, force: :cascade do |t|
    t.integer "croptask_id", null: false
    t.integer "planting_id", null: false
  end

  create_table "planting_croptasks", force: :cascade do |t|
    t.integer "croptask_id"
    t.integer "planting_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plantings", force: :cascade do |t|
    t.integer "crop_id"
    t.string "planting"
    t.integer "bedfeet"
    t.date "fielddate"
    t.integer "weeksuntilharvest"
    t.integer "weeksofharvest"
    t.date "greehousedate"
    t.date "firstharvest"
    t.date "lastharvest"
    t.integer "weeklyyield"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "croptask_id"
  end

  create_table "tasktodos", force: :cascade do |t|
    t.integer "crop_id"
    t.date "date"
    t.string "planting_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "task"
    t.string "category"
    t.string "location"
    t.string "plantingname"
  end

  create_table "varieties", force: :cascade do |t|
    t.integer "crop_id"
    t.integer "planting_id"
    t.string "variety"
    t.string "body"
    t.integer "percentageofplanting"
    t.integer "varietybedfeet"
    t.integer "transplantflats"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
