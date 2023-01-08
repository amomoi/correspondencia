# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_01_08_193137) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boxes", force: :cascade do |t|
    t.string "numero"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "lockercliente_id"
    t.index ["lockercliente_id"], name: "index_boxes_on_lockercliente_id"
  end

  create_table "lockerclientes", force: :cascade do |t|
    t.string "nome_empresa"
    t.string "site"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lockerusuarios", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "cpf"
    t.string "celular"
    t.string "senha"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "lockercliente"
    t.bigint "lockercliente_id"
    t.index ["lockercliente_id"], name: "index_lockerusuarios_on_lockercliente_id"
  end

  create_table "status_boxes", force: :cascade do |t|
    t.string "torre"
    t.string "n_apto"
    t.string "id_page"
    t.string "senha"
    t.string "envio"
    t.string "n_encomendas"
    t.string "box_number"
    t.string "ativo_inativo"
    t.bigint "lockercliente_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lockercliente_id"], name: "index_status_boxes_on_lockercliente_id"
  end

  add_foreign_key "boxes", "lockerclientes"
  add_foreign_key "lockerusuarios", "lockerclientes"
  add_foreign_key "status_boxes", "lockerclientes"
end
