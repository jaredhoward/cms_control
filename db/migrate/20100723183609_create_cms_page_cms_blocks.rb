class CreateCmsPageCmsBlocks < ActiveRecord::Migration
  def self.up
    create_table :cms_page_cms_blocks do |t|
      t.integer :cms_page_id, :cms_block_id, :sort, :null => false

      t.index :cms_page_id
      t.index :cms_block_id
      t.index :sort
    end
  end

  def self.down
    drop_table :cms_page_cms_blocks
  end
end
