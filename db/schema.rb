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

ActiveRecord::Schema.define(:version => 20130223221459) do

  create_table "businesses", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "url"
    t.string   "phone"
    t.string   "ein"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "certifications", :force => true do |t|
    t.integer  "business_id"
    t.datetime "cert_date"
    t.datetime "expiry_date"
    t.boolean  "mand1"
    t.boolean  "mand2"
    t.boolean  "mand3"
    t.boolean  "mand4"
    t.boolean  "mand5"
    t.integer  "safety1_c"
    t.integer  "safety1_d"
    t.boolean  "nutrition1_c"
    t.integer  "nutrition1_d"
    t.boolean  "nutrition2_c"
    t.integer  "nutrition2_d"
    t.boolean  "nutrition3_c"
    t.integer  "nutrition3_d"
    t.boolean  "nutrition4_c"
    t.integer  "nutrition4_d"
    t.boolean  "nutrition5_c"
    t.integer  "nutrition5_d"
    t.float    "labor1_c"
    t.integer  "labor1_d"
    t.float    "labor2_c"
    t.integer  "labor2_d"
    t.float    "labor3_c"
    t.integer  "labor3_d"
    t.float    "labor4_c"
    t.integer  "labor4_d"
    t.boolean  "labor5_c"
    t.integer  "labor5_d"
    t.boolean  "labor6_c"
    t.integer  "labor6_d"
    t.boolean  "labor7_c"
    t.integer  "labor7_d"
    t.boolean  "community1_c"
    t.integer  "community1_d"
    t.boolean  "community2_c"
    t.integer  "community2_d"
    t.boolean  "community3_c"
    t.integer  "community3_d"
    t.boolean  "community4_c"
    t.integer  "community4_d"
    t.float    "source1_c"
    t.integer  "source1_d"
    t.boolean  "conserv1_c"
    t.integer  "conserv1_d"
    t.boolean  "conserv2_c"
    t.integer  "conserv2_d"
    t.boolean  "conserv3_c"
    t.integer  "conserv3_d"
    t.boolean  "conserv4_c"
    t.integer  "conserv4_d"
    t.boolean  "conserv5_c"
    t.integer  "conserv5_d"
    t.boolean  "conserv6_c"
    t.integer  "conserv6_d"
    t.boolean  "conserv7_c"
    t.integer  "conserv7_d"
    t.boolean  "conserv8_c"
    t.integer  "conserv8_d"
    t.float    "conserv9_c"
    t.integer  "conserv9_d"
    t.boolean  "conserv10_c"
    t.integer  "conserv10_d"
    t.boolean  "conserv11_c"
    t.integer  "conserv11_d"
    t.boolean  "conserv12_c"
    t.integer  "conserv12_d"
    t.boolean  "conserv13_c"
    t.integer  "conserv13_d"
    t.boolean  "conserv14_c"
    t.integer  "conserv14_d"
    t.string   "optn1_c"
    t.integer  "optn1_d"
    t.string   "optn2_c"
    t.integer  "optn2_d"
    t.string   "optn3_c"
    t.integer  "optn3_d"
    t.string   "optn4_c"
    t.integer  "optn4_d"
    t.string   "optn5_c"
    t.integer  "optn5_d"
    t.float    "healthy_dining_points"
    t.float    "healthy_work_points"
    t.float    "community_benefits_points"
    t.float    "food_sourcing_points"
    t.float    "conversation_points"
    t.float    "total_points"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

end
