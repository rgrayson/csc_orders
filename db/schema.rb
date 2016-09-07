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

ActiveRecord::Schema.define(version: 20160812171612) do

  create_table "Cscmenumodels", force: :cascade do |t|
    t.string   "mcode"
    t.date     "dte"
    t.string   "sts"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Mrktcstores", force: :cascade do |t|
    t.integer  "store"
    t.string   "storedesc"
    t.string   "locncode"
    t.string   "fld"
    t.string   "flddesc"
    t.integer  "sub"
    t.string   "subdesc"
    t.string   "usercode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cscmenulimodels", force: :cascade do |t|
    t.string   "mcode"
    t.date     "dte"
    t.string   "itemnmbr"
    t.string   "itemdesc"
    t.string   "category"
    t.string   "uofm"
    t.string   "string"
    t.integer  "equomqty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cscmenulis", force: :cascade do |t|
    t.integer  "ordsts"
    t.datetime "dtesumbmitted"
    t.string   "mcode"
    t.date     "dte"
    t.string   "locncode"
    t.string   "fld"
    t.string   "flddesc"
    t.integer  "sub"
    t.string   "subdesc"
    t.string   "store"
    t.integer  "storedesc"
    t.string   "category"
    t.string   "item"
    t.string   "itemdesc"
    t.string   "uofm"
    t.integer  "equomqty"
    t.integer  "qtyord"
    t.decimal  "selprc",        precision: 6, scale: 2
    t.integer  "histord"
    t.integer  "histavgord"
    t.integer  "histavgwst"
    t.integer  "sugord"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "cscmenus", force: :cascade do |t|
    t.string   "mcode"
    t.date     "dte"
    t.string   "sts"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
