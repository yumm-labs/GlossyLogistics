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

ActiveRecord::Schema.define(:version => 20120320160730) do

  create_table "exports", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "imports", :force => true do |t|
    t.integer  "igm_no"
    t.date     "igm_date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "invoice_product_details", :force => true do |t|
    t.integer  "invoice_id"
    t.integer  "product_id"
    t.integer  "amount"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "invoice_product_details", ["invoice_id"], :name => "index_invoice_product_details_on_invoice_id"
  add_index "invoice_product_details", ["product_id"], :name => "index_invoice_product_details_on_product_id"

  create_table "invoices", :force => true do |t|
    t.integer  "shipment_id"
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "line1"
    t.string   "line2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "pincode"
    t.date     "invoice_date"
    t.integer  "invoice_number"
    t.integer  "service_charge"
    t.integer  "service_tax_amount"
    t.integer  "service_tax_percentage"
    t.integer  "total_amount"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "invoices", ["shipment_id"], :name => "index_invoices_on_shipment_id"

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "identifier"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "shipments", :force => true do |t|
    t.string   "no_of_pkgs"
    t.string   "invoice_reference"
    t.text     "goods_description"
    t.string   "mawb_mbl_no"
    t.string   "hawb_hbl_no"
    t.string   "agent"
    t.string   "bill_no"
    t.date     "bill_date"
    t.string   "transport_type"
    t.integer  "transport_id"
    t.date     "cargo_receipt_date"
    t.integer  "job_no"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
