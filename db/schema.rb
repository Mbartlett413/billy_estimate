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

ActiveRecord::Schema.define(version: 2020_06_20_190642) do

  create_table "estimates", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "origin_address"
    t.string "dest_addres"
    t.string "home_phone"
    t.string "bus_phone"
    t.string "account"
    t.string "pack_date"
    t.string "load_date"
    t.string "delivery_date"
    t.text "special_instructions"
    t.decimal "pounds", precision: 8, scale: 2
    t.decimal "rooms", precision: 8, scale: 2
    t.decimal "cubic_feet", precision: 8, scale: 2
    t.decimal "local_moving_movers", precision: 8, scale: 2
    t.decimal "local_moving_per_hour", precision: 8, scale: 2
    t.decimal "local_moving_estimated_hours", precision: 8, scale: 2
    t.decimal "local_moving_driving_time", precision: 8, scale: 2
    t.decimal "local_moving_insurance_charge", precision: 8, scale: 2
    t.decimal "local_moving_per_thousand", precision: 8, scale: 2
    t.decimal "storage_movers", precision: 8, scale: 2
    t.decimal "storage_per_hour", precision: 8, scale: 2
    t.decimal "storage_estimated_hours", precision: 8, scale: 2
    t.decimal "storage_handling_per_crate", precision: 8, scale: 2
    t.decimal "storage_monthly_per_crate", precision: 8, scale: 2
    t.decimal "storage_insurance_charge", precision: 8, scale: 2
    t.decimal "storage_per_hundred_per_month", precision: 8, scale: 2
    t.decimal "container_charges", precision: 8, scale: 2
    t.decimal "packing_labor", precision: 8, scale: 2
    t.decimal "unpacking_labor", precision: 8, scale: 2
    t.text "other_service_desc"
    t.decimal "other_service_cost", precision: 8, scale: 2
    t.decimal "estimate_total", precision: 8, scale: 2
    t.decimal "down_payment", precision: 8, scale: 2
    t.boolean "small_lamps", default: false
    t.boolean "dishes", default: false
    t.boolean "clothes", default: false
    t.boolean "all_breakables", default: false
    t.boolean "mirrors", default: false
    t.boolean "pictures", default: false
    t.boolean "everything_but_furniture", default: false
    t.boolean "origin_elevator", default: false
    t.boolean "origin_carry_flights", default: false
    t.boolean "origin_lower_hoist", default: false
    t.boolean "origin_long_carry", default: false
    t.boolean "destination_elevator", default: false
    t.boolean "destination_carry_flights", default: false
    t.boolean "destination_lower_hoist", default: false
    t.boolean "destination_long_carry", default: false
    t.decimal "containers_est_num_barrel_dish_packs", precision: 8, scale: 2
    t.decimal "containers_est_num_carton_one_n_half", precision: 8, scale: 2
    t.decimal "containers_est_num_carton_three", precision: 8, scale: 2
    t.decimal "containers_est_num_carton_four_n_half", precision: 8, scale: 2
    t.decimal "containers_est_num_carton_six", precision: 8, scale: 2
    t.decimal "containers_est_num_carton_six_n_half", precision: 8, scale: 2
    t.decimal "containers_est_num_wardrobe_ctn", precision: 8, scale: 2
    t.decimal "containers_est_num_mattress_twin", precision: 8, scale: 2
    t.decimal "containers_est_num_mattress_full", precision: 8, scale: 2
    t.decimal "containers_est_num_mattress_king_queen", precision: 8, scale: 2
    t.decimal "containers_est_num_mattress_crib", precision: 8, scale: 2
    t.decimal "containers_est_num_mirror_ctn", precision: 8, scale: 2
    t.decimal "containers_per_unit_barrel_dish_packs", precision: 8, scale: 2
    t.decimal "containers_per_unit_carton_one_n_half", precision: 8, scale: 2
    t.decimal "containers_per_unit_carton_three", precision: 8, scale: 2
    t.decimal "containers_per_unit_carton_four_n_half", precision: 8, scale: 2
    t.decimal "containers_per_unit_carton_six", precision: 8, scale: 2
    t.decimal "containers_per_unit_carton_six_n_half", precision: 8, scale: 2
    t.decimal "containers_per_unit_wardrobe_ctn", precision: 8, scale: 2
    t.decimal "containers_per_unit_mattress_twin", precision: 8, scale: 2
    t.decimal "containers_per_unit_mattress_full", precision: 8, scale: 2
    t.decimal "containers_per_unit_mattress_king_queen", precision: 8, scale: 2
    t.decimal "containers_per_unit_mattress_crib", precision: 8, scale: 2
    t.decimal "containers_per_unit_mirror_ctn", precision: 8, scale: 2
    t.decimal "packing_est_num_barrel_dish_packs", precision: 8, scale: 2
    t.decimal "packing_est_num_carton_one_n_half", precision: 8, scale: 2
    t.decimal "packing_est_num_carton_three", precision: 8, scale: 2
    t.decimal "packing_est_num_carton_four_n_half", precision: 8, scale: 2
    t.decimal "packing_est_num_carton_six", precision: 8, scale: 2
    t.decimal "packing_est_num_carton_six_n_half", precision: 8, scale: 2
    t.decimal "packing_est_num_wardrobe_ctn", precision: 8, scale: 2
    t.decimal "packing_est_num_mattress_twin", precision: 8, scale: 2
    t.decimal "packing_est_num_mattress_full", precision: 8, scale: 2
    t.decimal "packing_est_num_mattress_king_queen", precision: 8, scale: 2
    t.decimal "packing_est_num_mattress_crib", precision: 8, scale: 2
    t.decimal "packing_est_num_mirror_ctn", precision: 8, scale: 2
    t.decimal "packing_est_num_crates_min_size_mirror", precision: 8, scale: 2
    t.decimal "packing_per_unit_barrel_dish_packs", precision: 8, scale: 2
    t.decimal "packing_per_unit_carton_one_n_half", precision: 8, scale: 2
    t.decimal "packing_per_unit_carton_three", precision: 8, scale: 2
    t.decimal "packing_per_unit_carton_four_n_half", precision: 8, scale: 2
    t.decimal "packing_per_unit_carton_six", precision: 8, scale: 2
    t.decimal "packing_per_unit_carton_six_n_half", precision: 8, scale: 2
    t.decimal "packing_per_unit_wardrobe_ctn", precision: 8, scale: 2
    t.decimal "packing_per_unit_mattress_twin", precision: 8, scale: 2
    t.decimal "packing_per_unit_mattress_full", precision: 8, scale: 2
    t.decimal "packing_per_unit_mattress_king_queen", precision: 8, scale: 2
    t.decimal "packing_per_unit_mattress_crib", precision: 8, scale: 2
    t.decimal "packing_per_unit_mirror_ctn", precision: 8, scale: 2
    t.decimal "packing_per_unit_crates_min_size_mirror", precision: 8, scale: 2
    t.string "crates_greater_size_mirror"
    t.decimal "total_estimated_charges", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
