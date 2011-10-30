class CreateTitanControlCmsMetas < ActiveRecord::Migration
  def change
    create_table :titan_control_cms_metas do |t|
      t.timestamps
      t.string :metaable_type
      t.integer :metaable_id
      t.string :access, :url, :title
      t.integer :current_cms_content_id
      t.text :description, :keywords
    end
    change_table :titan_control_cms_metas do |t|
      t.index [:metaable_type, :metaable_id]
      t.index :access
      t.index :url
      t.index :current_cms_content_id
    end
  end
end