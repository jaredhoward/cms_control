class CreateTitanControlCmsPageCategories < ActiveRecord::Migration
  def change
    create_table :titan_control_cms_page_categories do |t|
      t.integer :cms_page_id, :category_id
    end
    change_table :titan_control_cms_page_categories do |t|
      t.index :cms_page_id
      t.index :category_id
    end
  end
end