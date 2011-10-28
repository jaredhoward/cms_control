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

ActiveRecord::Schema.define(:version => 20100723183609) do

  create_table "categories", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category_type"
    t.string   "name"
  end

  add_index "categories", ["category_type"], :name => "index_categories_on_category_type"
  add_index "categories", ["name"], :name => "index_categories_on_name"

  create_table "cms_blocks", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "current_cms_content_id"
    t.string   "title"
  end

  add_index "cms_blocks", ["current_cms_content_id"], :name => "index_cms_blocks_on_current_cms_content_id"

  create_table "cms_contents", :force => true do |t|
    t.datetime "created_at"
    t.string   "contentable_type"
    t.integer  "contentable_id"
    t.string   "status"
    t.string   "title"
    t.text     "content"
  end

  add_index "cms_contents", ["contentable_type", "contentable_id"], :name => "index_cms_contents_on_contentable_type_and_contentable_id"
  add_index "cms_contents", ["created_at"], :name => "index_cms_contents_on_created_at"
  add_index "cms_contents", ["status"], :name => "index_cms_contents_on_status"

  create_table "cms_metas", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "metaable_type"
    t.integer  "metaable_id"
    t.string   "access"
    t.string   "url"
    t.string   "title"
    t.integer  "current_cms_content_id"
    t.text     "description"
    t.text     "keywords"
  end

  add_index "cms_metas", ["access"], :name => "index_cms_metas_on_access"
  add_index "cms_metas", ["current_cms_content_id"], :name => "index_cms_metas_on_current_cms_content_id"
  add_index "cms_metas", ["metaable_type", "metaable_id"], :name => "index_cms_metas_on_metaable_type_and_metaable_id"
  add_index "cms_metas", ["url"], :name => "index_cms_metas_on_url"

  create_table "cms_page_categories", :force => true do |t|
    t.integer "cms_page_id"
    t.integer "category_id"
  end

  add_index "cms_page_categories", ["category_id"], :name => "index_cms_page_categories_on_category_id"
  add_index "cms_page_categories", ["cms_page_id"], :name => "index_cms_page_categories_on_cms_page_id"

  create_table "cms_page_cms_blocks", :force => true do |t|
    t.integer "cms_page_id",  :null => false
    t.integer "cms_block_id", :null => false
    t.integer "sort",         :null => false
  end

  add_index "cms_page_cms_blocks", ["cms_block_id"], :name => "index_cms_page_cms_blocks_on_cms_block_id"
  add_index "cms_page_cms_blocks", ["cms_page_id"], :name => "index_cms_page_cms_blocks_on_cms_page_id"
  add_index "cms_page_cms_blocks", ["sort"], :name => "index_cms_page_cms_blocks_on_sort"

  create_table "cms_pages", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
    t.integer  "sort",       :default => 0, :null => false
    t.text     "menu_title"
  end

  add_index "cms_pages", ["sort"], :name => "index_cms_pages_on_sort"
  add_index "cms_pages", ["status"], :name => "index_cms_pages_on_status"

  create_table "file_resource_releases", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "file_resource_id"
    t.string   "file"
  end

  add_index "file_resource_releases", ["file_resource_id"], :name => "index_file_resource_releases_on_file_resource_id"

  create_table "file_resources", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "download_url"
    t.integer  "current_release_id"
  end

  add_index "file_resources", ["name"], :name => "index_file_resources_on_name"

  create_table "product_file_resources", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_id"
    t.integer  "file_resource_id"
    t.integer  "category_id"
  end

  add_index "product_file_resources", ["category_id"], :name => "index_product_file_resources_on_category_id"
  add_index "product_file_resources", ["file_resource_id"], :name => "index_product_file_resources_on_file_resource_id"
  add_index "product_file_resources", ["product_id"], :name => "index_product_file_resources_on_product_id"

  create_table "products", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "products", ["name"], :name => "index_products_on_name"

end
