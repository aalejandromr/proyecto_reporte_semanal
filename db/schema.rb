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

ActiveRecord::Schema.define(version: 2020_09_15_023847) do

  create_table "asistencia_domingos", force: :cascade do |t|
    t.integer "hnos_a"
    t.integer "hnos_i"
    t.integer "friends"
    t.integer "childrens"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "rec"
    t.integer "conv"
  end

  create_table "asistencia_reunion_evangelista", force: :cascade do |t|
    t.integer "hnos_a"
    t.integer "hnos_i"
    t.integer "friends"
    t.integer "childrens"
    t.float "ofrenda"
    t.integer "aceptados"
    t.integer "personas_en_discipulado"
    t.integer "leccion"
    t.integer "candidatos_bautismo"
    t.integer "visitas"
    t.integer "personas_ministradas"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "rec"
  end

  create_table "asistencia_reunion_evangelists", force: :cascade do |t|
    t.integer "hnos_a"
    t.integer "hnos_i"
    t.integer "friends"
    t.integer "childrens"
    t.float "ofrenda"
    t.integer "aceptados"
    t.integer "personas_en_discipulado"
    t.integer "leccion"
    t.integer "candidatos_bautismo"
    t.integer "visitas"
    t.integer "personas_ministradas"
    t.integer "rec"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "asistencia_reunion_planificacions", force: :cascade do |t|
    t.integer "miembros_nucleo"
    t.integer "miembros_apoyo"
    t.string "reflexion_semana"
    t.boolean "meta_amigos_alcanzada"
    t.boolean "meta_amigos_establecida"
    t.datetime "hora_reunion"
    t.float "ofrenda"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "celulas", force: :cascade do |t|
    t.string "name"
    t.integer "sector_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sector_id"], name: "index_celulas_on_sector_id"
  end

  create_table "liders", force: :cascade do |t|
    t.string "name"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reporte_semanal_celulas", force: :cascade do |t|
    t.string "lider"
    t.string "anfitrion"
    t.boolean "reunion_evaluacion"
    t.boolean "visita_supervisor"
    t.integer "supervisor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "celula_id"
    t.integer "asistencia_domingo_id"
    t.integer "asistencia_reunion_evangelist_id"
    t.integer "asistencia_reunion_planificacion_id"
    t.index ["asistencia_domingo_id"], name: "index_reporte_semanal_domingo_id"
    t.index ["asistencia_reunion_evangelist_id"], name: "index_repote_semanal_reunion_evangelist_id"
    t.index ["asistencia_reunion_planificacion_id"], name: "index_reporte_semanal_reunion_planificacion"
    t.index ["supervisor_id"], name: "index_reporte_semanal_celulas_on_supervisor_id"
  end

  create_table "sectors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "supervisors", force: :cascade do |t|
    t.string "name"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "celulas", "sectors"
  add_foreign_key "reporte_semanal_celulas", "asistencia_domingos"
  add_foreign_key "reporte_semanal_celulas", "asistencia_reunion_evangelists"
  add_foreign_key "reporte_semanal_celulas", "asistencia_reunion_planificacions"
  add_foreign_key "reporte_semanal_celulas", "celulas"
  add_foreign_key "reporte_semanal_celulas", "supervisors"
end
