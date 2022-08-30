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

ActiveRecord::Schema.define(version: 2022_08_26_170253) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_categories_on_user_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "telephone"
    t.integer "genre"
    t.text "image"
    t.integer "dos"
    t.integer "epaule"
    t.integer "poitrine"
    t.integer "long_manche"
    t.integer "tour_manche"
    t.integer "long_taille"
    t.integer "tour_taille"
    t.integer "pinces"
    t.integer "long_camisole"
    t.integer "long_chemise"
    t.integer "poignet"
    t.integer "tour_bras"
    t.integer "long_robe"
    t.integer "ventre"
    t.integer "tour_cou"
    t.integer "frappe"
    t.integer "ceinture"
    t.integer "bassin"
    t.integer "genoux"
    t.integer "cuisse"
    t.integer "long_jupe"
    t.integer "long_pantalon"
    t.integer "bas"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_clients_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.bigint "client_id", null: false
    t.bigint "order_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_comments_on_client_id"
    t.index ["order_id"], name: "index_comments_on_order_id"
  end

  create_table "models", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "image"
    t.integer "montant"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.bigint "category_id", null: false
    t.index ["category_id"], name: "index_models_on_category_id"
    t.index ["user_id"], name: "index_models_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "montant_total"
    t.integer "avance"
    t.integer "reste"
    t.integer "etat_facture"
    t.date "livraison"
    t.text "image"
    t.integer "etat_command"
    t.integer "priority"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "model_id", null: false
    t.bigint "client_id", null: false
    t.index ["client_id"], name: "index_orders_on_client_id"
    t.index ["model_id"], name: "index_orders_on_model_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name"
    t.string "telephone"
    t.text "image"
    t.boolean "admin", default: false
    t.string "atelier"
    t.text "description_atelier"
    t.text "logo"
    t.string "telephone_atelier"
    t.string "slogan"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "categories", "users"
  add_foreign_key "clients", "users"
  add_foreign_key "comments", "clients"
  add_foreign_key "comments", "orders"
  add_foreign_key "models", "categories"
  add_foreign_key "models", "users"
  add_foreign_key "orders", "clients"
  add_foreign_key "orders", "models"
  add_foreign_key "orders", "users"
end
