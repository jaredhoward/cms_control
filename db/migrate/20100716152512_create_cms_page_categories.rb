class CreateCmsPageCategories < ActiveRecord::Migration
  def self.change
    create_table :cms_page_categories do |t|
      t.integer :cms_page_id, :category_id
    end
    change_table :cms_page_categories do |t|
      t.index :cms_page_id
      t.index :category_id
    end
  end
end