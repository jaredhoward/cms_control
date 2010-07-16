class CreateCmsPageCategories < ActiveRecord::Migration
  def self.up
    create_table :cms_page_categories do |t|
      t.integer :cms_page_id, :category_id

      t.index :cms_page_id
      t.index :category_id
    end
  end

  def self.down
    drop_table :cms_page_categories
  end
end
