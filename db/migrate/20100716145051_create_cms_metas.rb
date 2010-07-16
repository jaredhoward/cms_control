class CreateCmsMetas < ActiveRecord::Migration
  def self.up
    create_table :cms_metas do |t|
      t.timestamps
      t.string :metaable_type
      t.integer :metaable_id
      t.string :url, :title
      t.integer :current_cms_content_id
      t.text :description, :keywords

      t.index [:metaable_type, :metaable_id]
      t.index :url
      t.index :current_cms_content_id
    end
  end

  def self.down
    drop_table :cms_metas
  end
end
