# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100723183609) do

  create_table "categories", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category_type"
    t.string   "name"
  end

  create_table "cms_blocks", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "current_cms_content_id"
    t.string   "title"
  end

  create_table "cms_contents", :force => true do |t|
    t.datetime "created_at"
    t.string   "contentable_type"
    t.integer  "contentable_id"
    t.string   "status"
    t.string   "title"
    t.text     "content",          :limit => 2147483647
  end

  create_table "cms_metas", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "metaable_type"
    t.integer  "metaable_id"
    t.string   "url"
    t.string   "title"
    t.integer  "current_cms_content_id"
    t.text     "description"
    t.text     "keywords"
  end

  create_table "cms_page_categories", :force => true do |t|
    t.integer "cms_page_id"
    t.integer "category_id"
  end

  create_table "cms_page_cms_blocks", :force => true do |t|
    t.integer "cms_page_id",  :null => false
    t.integer "cms_block_id", :null => false
    t.integer "sort",         :null => false
  end

  create_table "cms_pages", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
    t.integer  "sort",       :default => 0, :null => false
    t.text     "menu_title"
  end

  create_table "file_resource_attributes", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "group"
    t.string   "name"
  end

  create_table "file_resource_version_attributes", :force => true do |t|
    t.integer "file_resource_version_id"
    t.integer "file_resource_attribute_id"
  end

  create_table "file_resource_versions", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "file_resource_id"
    t.string   "file"
  end

  create_table "file_resources", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "product_file_resources", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_id"
    t.integer  "file_resource_id"
    t.integer  "category_id"
  end

  create_table "products", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

end
