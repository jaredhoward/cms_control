class CreateCmsPages < ActiveRecord::Migration
  def self.up
    create_table :cms_pages do |t|
      t.timestamps
      t.string :status
      t.integer :sort
      t.boolean :show_in_menu

      t.index :status
      t.index :sort
      t.index :show_in_menu
    end
  end

  def self.down
    drop_table :cms_pages
  end
end
