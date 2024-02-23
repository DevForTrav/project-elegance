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

ActiveRecord::Schema[7.0].define(version: 2024_02_09_184349) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  # Custom types defined in this database.
  # Note that some types may not work with other database engines. Be careful if changing database.
  create_enum "terminal_type", ["male", "female"]

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "boat_wiring_harnesses", force: :cascade do |t|
    t.bigint "boat_id", null: false
    t.bigint "wiring_harness_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["boat_id"], name: "index_boat_wiring_harnesses_on_boat_id"
    t.index ["wiring_harness_id"], name: "index_boat_wiring_harnesses_on_wiring_harness_id"
  end

  create_table "boats", force: :cascade do |t|
    t.integer "year"
    t.string "model"
    t.string "manufacturer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "circuits", force: :cascade do |t|
    t.string "label"
    t.string "gauge"
    t.integer "length"
    t.bigint "wiring_harness_id", null: false
    t.bigint "p1_terminal_id", null: false
    t.bigint "p2_terminal_id", null: false
    t.bigint "p1_connector_id", null: false
    t.bigint "p2_connector_id", null: false
    t.bigint "twisted_with_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "component_id"
    t.string "kind"
    t.string "primary_color"
    t.string "secondary_color"
    t.string "circuit_position"
    t.string "p1_position"
    t.string "p2_position"
    t.index ["component_id"], name: "index_circuits_on_component_id"
    t.index ["p1_connector_id"], name: "index_circuits_on_p1_connector_id"
    t.index ["p1_terminal_id"], name: "index_circuits_on_p1_terminal_id"
    t.index ["p2_connector_id"], name: "index_circuits_on_p2_connector_id"
    t.index ["p2_terminal_id"], name: "index_circuits_on_p2_terminal_id"
    t.index ["twisted_with_id"], name: "index_circuits_on_twisted_with_id"
    t.index ["wiring_harness_id"], name: "index_circuits_on_wiring_harness_id"
  end

  create_table "components", force: :cascade do |t|
    t.string "label"
    t.bigint "boat_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
    t.string "description"
    t.index ["boat_id"], name: "index_components_on_boat_id"
  end

  create_table "connectors", force: :cascade do |t|
    t.string "name"
    t.string "part_number"
    t.integer "contacts"
    t.string "manufacturer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "terminal_id"
    t.bigint "secondary_terminal_id"
    t.index ["secondary_terminal_id"], name: "index_connectors_on_secondary_terminal_id"
    t.index ["terminal_id"], name: "index_connectors_on_terminal_id"
  end

  create_table "splices", force: :cascade do |t|
    t.bigint "circuit_id", null: false
    t.bigint "terminal_id"
    t.string "label"
    t.integer "length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "component_id"
    t.bigint "child_splice_id"
    t.string "circuit_position"
    t.bigint "wiring_harness_connector_id"
    t.index ["child_splice_id"], name: "index_splices_on_child_splice_id"
    t.index ["circuit_id"], name: "index_splices_on_circuit_id"
    t.index ["component_id"], name: "index_splices_on_component_id"
    t.index ["terminal_id"], name: "index_splices_on_terminal_id"
    t.index ["wiring_harness_connector_id"], name: "index_splices_on_wiring_harness_connector_id"
  end

  create_table "terminals", force: :cascade do |t|
    t.string "part_number"
    t.integer "wire_gauge_min"
    t.integer "wire_gauge_max"
    t.string "material"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "gender"
  end

  create_table "wires", force: :cascade do |t|
    t.string "primary_color"
    t.string "secondary_color"
    t.string "gauge"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wiring_harness_connectors", force: :cascade do |t|
    t.string "label"
    t.integer "populated_contacts"
    t.bigint "wiring_harness_id", null: false
    t.bigint "connector_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["connector_id"], name: "index_wiring_harness_connectors_on_connector_id"
    t.index ["wiring_harness_id"], name: "index_wiring_harness_connectors_on_wiring_harness_id"
  end

  create_table "wiring_harnesses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "boat_wiring_harnesses", "boats"
  add_foreign_key "boat_wiring_harnesses", "wiring_harnesses"
  add_foreign_key "circuits", "circuits", column: "twisted_with_id"
  add_foreign_key "circuits", "components"
  add_foreign_key "circuits", "terminals", column: "p1_terminal_id"
  add_foreign_key "circuits", "terminals", column: "p2_terminal_id"
  add_foreign_key "circuits", "wiring_harness_connectors", column: "p1_connector_id"
  add_foreign_key "circuits", "wiring_harness_connectors", column: "p2_connector_id"
  add_foreign_key "circuits", "wiring_harnesses"
  add_foreign_key "components", "boats"
  add_foreign_key "connectors", "terminals"
  add_foreign_key "connectors", "terminals", column: "secondary_terminal_id"
  add_foreign_key "splices", "circuits"
  add_foreign_key "splices", "components"
  add_foreign_key "splices", "splices", column: "child_splice_id"
  add_foreign_key "splices", "terminals"
  add_foreign_key "splices", "wiring_harness_connectors"
  add_foreign_key "wiring_harness_connectors", "connectors"
  add_foreign_key "wiring_harness_connectors", "wiring_harnesses"
end
