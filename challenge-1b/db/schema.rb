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

ActiveRecord::Schema.define(version: 20170512012834) do

  create_table "buyers", force: :cascade do |t|
    t.string   "description"
    t.integer  "quantity"
    t.string   "address"
    t.string   "provider"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "total_centavos", default: 0,     null: false
    t.string   "total_currency", default: "BRL", null: false
    t.integer  "price_centavos", default: 0,     null: false
    t.string   "price_currency", default: "BRL", null: false
    t.string   "name"
  end

end
