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

ActiveRecord::Schema.define(:version => 20130109064357) do

  create_table "open_graph_objects", :force => true do |t|
    t.string   "title"
    t.string   "object_type"
    t.string   "image"
    t.string   "description"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "og_site_name"
    t.string   "og_image"
    t.string   "og_description"
    t.string   "og_title"
    t.string   "og_type"
    t.string   "og_url"
    t.string   "embedfeed_network"
    t.string   "embedfeed_op_url"
    t.string   "embedfeed_op_type"
    t.string   "embedfeed_op_title"
    t.string   "embedfeed_op_image"
    t.string   "embedfeed_private"
    t.string   "embedlike_network"
    t.string   "embedlike_op_url"
    t.string   "embedlike_op_type"
    t.string   "embedlike_op_title"
    t.string   "embedlike_op_image"
    t.string   "embedlike_private"
    t.string   "embedfollow_network"
    t.string   "embedfollow_op_url"
    t.string   "embedfollow_op_type"
    t.string   "embedfollow_op_title"
    t.string   "embedfollow_op_image"
    t.string   "embedfollow_private"
  end

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.text     "full_auth_blob"
  end

end
