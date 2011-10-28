class CreateCmsBlocks < ActiveRecord::Migration
  def change
    create_table :cms_blocks do |t|
      t.timestamps
      t.integer :current_cms_content_id
      t.string :title
    end
    change_table :cms_blocks do |t|
      t.index :current_cms_content_id
    end
  end
end