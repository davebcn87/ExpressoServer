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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111201224159) do

  create_table "begudes", :force => true do |t|
    t.float    "preuTall"
    t.float    "preuGrande"
    t.float    "preuVenti"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nom"
    t.integer  "categoria_id"
  end

  create_table "botigues", :force => true do |t|
    t.string   "nom"
    t.float    "lat"
    t.float    "lang"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "nom"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comandes", :force => true do |t|
    t.integer  "usuari_id"
    t.string   "beguda_id"
    t.boolean  "feta"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "extra_disponibles", :force => true do |t|
    t.integer  "beguda_id"
    t.integer  "extra_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "extra_disponibles", ["beguda_id"], :name => "index_extra_disponibles_on_beguda_id"
  add_index "extra_disponibles", ["extra_id"], :name => "index_extra_disponibles_on_extra_id"

  create_table "extres", :force => true do |t|
    t.string   "nom"
    t.float    "preu"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "remots", :force => true do |t|
    t.string   "hash"
    t.integer  "usuari_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "remots", ["usuari_id"], :name => "index_remots_on_usuari_id"

  create_table "subproductes", :force => true do |t|
    t.string   "nom"
    t.integer  "beguda_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subproductes", ["beguda_id"], :name => "index_subproductes_on_beguda_id"

  create_table "topings", :force => true do |t|
    t.integer  "comanda_id"
    t.integer  "extra_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "topings", ["comanda_id"], :name => "index_topings_on_comanda_id"
  add_index "topings", ["extra_id"], :name => "index_topings_on_extra_id"

  create_table "usuaris", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "saldo"
  end

end
