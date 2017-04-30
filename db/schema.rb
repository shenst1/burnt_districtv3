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

ActiveRecord::Schema.define(version: 20170427144740) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "state"
    t.integer  "rank"
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
  end

  create_table "cmsify_assets", force: :cascade do |t|
    t.string   "attachment"
    t.string   "attachable_type"
    t.integer  "attachable_id"
    t.integer  "height"
    t.integer  "width"
    t.integer  "rank"
    t.string   "state",           default: "active"
    t.string   "content_type"
    t.integer  "size"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.index ["attachable_type", "attachable_id"], name: "index_cmsify_assets_on_attachable_type_and_attachable_id", using: :btree
  end

  create_table "cmsify_attacheds", force: :cascade do |t|
    t.string   "type"
    t.integer  "asset_id"
    t.string   "attachable_type"
    t.integer  "attachable_id"
    t.integer  "rank"
    t.string   "state"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "alt_title_text"
    t.index ["asset_id"], name: "index_cmsify_attacheds_on_asset_id", using: :btree
    t.index ["attachable_type", "attachable_id"], name: "index_cmsify_attacheds_on_attachable_type_and_attachable_id", using: :btree
  end

  create_table "cmsify_collections", force: :cascade do |t|
    t.string   "name"
    t.string   "object_id"
    t.string   "type"
    t.integer  "rank"
    t.string   "state"
    t.integer  "collection_id"
    t.string   "slug"
    t.boolean  "apply_access_rules", default: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "configuration_type", default: 0
    t.index ["collection_id"], name: "index_cmsify_collections_on_collection_id", using: :btree
    t.index ["object_id"], name: "index_cmsify_collections_on_object_id", using: :btree
    t.index ["slug", "type"], name: "index_cmsify_collections_on_slug_and_type", using: :btree
  end

  create_table "cmsify_collects", force: :cascade do |t|
    t.integer  "collection_id"
    t.string   "collectible_type"
    t.integer  "collectible_id"
    t.integer  "rank"
    t.string   "state"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["collectible_type", "collectible_id"], name: "index_cmsify_collects_on_collectible_type_and_collectible_id", using: :btree
    t.index ["collection_id"], name: "index_cmsify_collects_on_collection_id", using: :btree
  end

  create_table "cmsify_items", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.string   "tagline"
    t.string   "author"
    t.string   "url"
    t.text     "body"
    t.integer  "rank"
    t.string   "state"
    t.datetime "published_at"
    t.text     "excerpt"
    t.string   "citation"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "cmsify_tables", force: :cascade do |t|
  end

end
