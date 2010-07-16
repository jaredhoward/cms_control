class CreateCmsContents < ActiveRecord::Migration
  def self.up
    create_table :cms_contents do |t|
      t.datetime :created_at
      t.string :contentable_type
      t.integer :contentable_id
      t.longtext :content

      t.index :created_at
      t.index [:contentable_type, :contentable_id]
    end
  end

  def self.down
    drop_table :cms_contents
  end
end
