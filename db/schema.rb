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

ActiveRecord::Schema.define(:version => 20121229222316) do

  create_table "abouts", :force => true do |t|
    t.string   "title_landing_page"
    t.text     "text_landing_page"
    t.text     "about_us"
    t.text     "history"
    t.text     "global_proyection"
    t.text     "work_with_us"
    t.string   "picture_landing_page_file_name"
    t.string   "picture_landing_page_content_type"
    t.integer  "picture_landing_page_file_size"
    t.datetime "picture_landing_page_updated_at"
    t.string   "about_picture_file_name"
    t.string   "about_picture_content_type"
    t.integer  "about_picture_file_size"
    t.datetime "about_picture_updated_at"
    t.string   "global_proyection_picture_file_name"
    t.string   "global_proyection_picture_content_type"
    t.integer  "global_proyection_picture_file_size"
    t.datetime "global_proyection_picture_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admins", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "carts", :force => true do |t|
    t.integer  "quantity"
    t.integer  "travel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.string   "time_zone"
    t.string   "weather"
    t.string   "voltage"
    t.string   "currency"
    t.text     "description"
    t.text     "image_map"
    t.integer  "destination_id"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "country_pictures", :force => true do |t|
    t.string   "country_picture_file_name"
    t.string   "country_picture_content_type"
    t.integer  "country_picture_file_size"
    t.datetime "country_picture_updated_at"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "destination_pictures", :force => true do |t|
    t.string   "destination_picture_file_name"
    t.string   "destination_picture_content_type"
    t.integer  "destination_picture_file_size"
    t.datetime "destination_picture_updated_at"
    t.integer  "destination_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "destinations", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "image_map"
    t.text     "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "extensions", :force => true do |t|
    t.integer  "travel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "position"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "member_picture_file_name"
    t.string   "member_picture_content_type"
    t.integer  "member_picture_file_size"
    t.datetime "member_picture_updated_at"
  end

  create_table "milestones", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "milestone_picture_file_name"
    t.string   "milestone_picture_content_type"
    t.integer  "milestone_picture_file_size"
    t.datetime "milestone_picture_updated_at"
  end

  create_table "offer_seasons", :force => true do |t|
    t.string   "title"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offers", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "slug"
    t.integer  "offer_season_id"
    t.string   "offer_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "offer_picture_file_name"
    t.string   "offer_picture_content_type"
    t.integer  "offer_picture_file_size"
    t.datetime "offer_picture_updated_at"
  end

  create_table "packs", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pack_picture_file_name"
    t.string   "pack_picture_content_type"
    t.integer  "pack_picture_file_size"
    t.datetime "pack_picture_updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.boolean  "important",                  :default => false
    t.boolean  "landing_page",               :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "posts_picture_file_name"
    t.string   "posts_picture_content_type"
    t.integer  "posts_picture_file_size"
    t.datetime "posts_picture_updated_at"
  end

  create_table "press_releases", :force => true do |t|
    t.string   "title"
    t.string   "content"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "press_releases", ["slug"], :name => "index_press_releases_on_slug", :unique => true

  create_table "prices", :force => true do |t|
    t.string   "class"
    t.float    "price"
    t.float    "single"
    t.float    "internal_air"
    t.string   "available"
    t.date     "start_date"
    t.date     "due_date"
    t.integer  "party"
    t.integer  "travel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "slides", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slide_file_name"
    t.string   "slide_content_type"
    t.integer  "slide_file_size"
    t.datetime "slide_updated_at"
  end

  create_table "testimonies", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "landing_page",                   :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "testimony_picture_file_name"
    t.string   "testimony_picture_content_type"
    t.integer  "testimony_picture_file_size"
    t.datetime "testimony_picture_updated_at"
  end

  create_table "travels", :force => true do |t|
    t.string   "name"
    t.text     "overview"
    t.text     "advantages"
    t.string   "price"
    t.integer  "days"
    t.integer  "departures"
    t.integer  "maxgroupsize"
    t.text     "travel_map"
    t.text     "notes"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "last_name"
    t.string   "address1"
    t.string   "address2"
    t.string   "state"
    t.string   "city"
    t.string   "zipcode"
    t.string   "country"
    t.string   "phone"
    t.string   "travel_agent"
    t.string   "code"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
