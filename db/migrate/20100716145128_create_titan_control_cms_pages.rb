class CreateTitanControlCmsPages < ActiveRecord::Migration
  def change
    create_table :titan_control_cms_pages do |t|
      t.timestamps
      t.string :status
      t.integer :sort, :default => 0, :null => false
      t.text :menu_title
    end
    change_table :titan_control_cms_pages do |t|
      t.index :status
      t.index :sort
    end
  end
end