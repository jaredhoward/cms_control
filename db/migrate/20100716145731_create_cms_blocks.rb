class CreateCmsBlocks < ActiveRecord::Migration
  def self.up
    create_table :cms_blocks do |t|
      t.timestamps
      t.integer :current_cms_content_id
      t.string :title

      t.index :current_cms_content_id
    end
  end

  def self.down
    drop_table :cms_blocks
  end
end
