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

ActiveRecord::Schema.define(:version => 20111107223150) do

  create_table "contact_types", :force => true do |t|
    t.string   "contact_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_num"
    t.string   "email"
    t.string   "address1"
    t.string   "address2"
    t.string   "contact_type"
    t.string   "role"
    t.string   "manager"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", :force => true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "city"
    t.string   "job_type"
    t.string   "insurance_company"
    t.string   "age"
    t.datetime "loss_date"
    t.string   "job_num"
    t.string   "job_status"
    t.string   "dispatch_status"
    t.string   "caller"
    t.string   "occupant"
    t.string   "production_manager"
    t.string   "crew_chief"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "practices", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "role"
    t.integer  "contact_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["contact_id"], :name => "index_roles_on_contact_id"

end
